<?php

namespace Database\Factories;

use App\Models\Dish;
use App\Models\Invoice;
use App\Models\InvoiceDishes;
use Illuminate\Database\Eloquent\Factories\Factory;

class InvoiceDishesFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = InvoiceDishes::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $dish = Dish::inRandomOrder();

        return [
            'invoice_id' => Invoice::inRandomOrder()->value('id'),
            'dish_id' => $dish->value('id'),
            'quantity' => rand(1, 2),
            'price' => $dish->value('price'),
        ];
    }
}
