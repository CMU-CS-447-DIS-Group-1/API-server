<?php

namespace App\Http\Controllers\API;

use App\Models\Table;
use App\Models\Invoice;
use Illuminate\Http\Request;
use App\Models\InvoiceDishes;
use App\Http\Controllers\Controller;

class SelectController extends Controller
{
    public function getTable()
    {
        return response()->json([
            'code' => 1,
            'count' => Table::count(),
            'data' => Table::all(),
        ]);
    }

    public function selectTable(Request $request)
    {
        $request = $request->only('code');
        if ($request != null) {
            $query = Table::where('code', $request['code'])->where('status', 0);
            $find = $query->get();
            if ($find->count() != 0) {
                $query->update([
                    'status' => 1,
                ]);

                return response()->json([
                    'code' => 1,
                ]);
            }
        }

        return response()->json([
            'code' => 0,
        ]);
    }

    public function order(Request $request, $table)
    {
        $table = Table::where('id', $table)->orWhere('code', $table)->first();
        if ($table != null) {
            $request = $request->only('dish_id', 'quantity', 'price');
            if ($request != null) {
                if ($table->status == 0) {
                    $table->status = 1;
                    $table->save();
                }
                $invoice = Invoice::firstOrCreate([
                    'table_id' => $table->id,
                    'status' => 0,
                ]);
                InvoiceDishes::firstOrNew([
                    'invoice_id' => $invoice->id,
                    'dish_id' => $request['dish_id'],
                ], [
                    'price' => $request['price'],
                ])->save();

                $find = InvoiceDishes::where('invoice_id', $invoice->id)->where('dish_id', $request['dish_id']);
                $get = $find->first();
                $find->update([
                    'quantity' => $get->quantity + $request['quantity'],
                ]);

                return response()->json([
                    'code' => 1,
                ]);
            }
        }

        return response()->json([
            'code' => 0,
        ]);
    }
}
