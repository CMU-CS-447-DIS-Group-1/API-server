<?php

namespace App\Http\Controllers\API;

use App\Models\Table;
use App\Models\Invoice;
use App\Http\Controllers\Controller;

class InvoiceController extends Controller
{
    public function index()
    {
        $invoices = Invoice::all();
        $data = [];
        foreach ($invoices as $invoice) {
            $data[] = [
                'id' => $invoice->id,
                'user_name' => $invoice->user->name ?? null,
                'table_id' => $invoice->table_id,
                'status' => $invoice->status,
                'created_at' => $invoice->created_at,
                'updated_at' => $invoice->updated_at,
            ];
        }

        return response()->json([
            'status' => 1,
            'data' => $data,
        ]);
    }

    public function show($table)
    {
        $invoice = Invoice::where('table_id', $table)->first();
        if ($invoice != null) {
            $dishes = [];
            $invoice_dishes = $invoice->dishes;
            foreach ($invoice_dishes as $invoice_dish) {
                $dish = $invoice_dish->dish;
                $dishes[] = json_decode(json_encode([
                    'name' => $dish->name ?? 'Món đã bị xóa',
                    'price' => $invoice_dish->price,
                    'quantity' => $invoice_dish->quantity,
                    'cost' => $invoice_dish->price * $invoice_dish->quantity,
                ]));
            }

            return response()->json([
                'status' => 1,
                'data' => $dishes,
            ]);
        }

        return response()->json([
            'status' => 0,
        ]);
    }

    public function view($table)
    {
        $table = Table::where('id', $table)->orWhere('code', $table)->first()->id;
        if ($table != null) {
            $invoice = Invoice::where('table_id', $table)->where('status', 0)->first();
            if ($invoice != null) {
                $dishes = [];
                $invoice_dishes = $invoice->dishes;
                foreach ($invoice_dishes as $invoice_dish) {
                    $dish = $invoice_dish->dish;
                    $dishes[] = json_decode(json_encode([
                        'name' => $dish->name ?? 'Món đã bị xóa',
                        'price' => $invoice_dish->price,
                        'quantity' => $invoice_dish->quantity,
                        'cost' => $invoice_dish->price * $invoice_dish->quantity,
                    ]));
                }

                return response()->json([
                    'status' => 1,
                    'data' => $dishes,
                ]);
            }
        }

        return response()->json([
            'status' => 0,
        ]);
    }

    function print($table) {
        $invoice = Invoice::where('table_id', $table);
        if ($invoice->count() > 0) {
            $invoice->update([
                'user_id' => auth()->user()->id,
                'status' => 1,
            ]);
            $table = Table::find($table);
            $table->status = 0;
            $table->save();

            return response()->json([
                'status' => 1,
            ]);
        }

        return response()->json([
            'status' => 0,
        ]);
    }
}
