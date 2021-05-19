<?php

namespace Database\Seeders;

use App\Models\Invoice;
use App\Models\InvoiceDishes;
use Illuminate\Database\Seeder;

class InvoiceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Invoice::factory(10)->create()->each(function ($invoice) {
            $numberOfDishes = rand(1, 2);
            for ($i = 0; $i < $numberOfDishes; $i++) {
                InvoiceDishes::factory(1)->create([
                    'invoice_id' => $invoice->id,
                ]);
            }
        });
    }
}
