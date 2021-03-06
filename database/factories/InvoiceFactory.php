<?php

namespace Database\Factories;

use App\Models\User;
use App\Models\Table;
use App\Models\Invoice;
use Illuminate\Database\Eloquent\Factories\Factory;

class InvoiceFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Invoice::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'user_id' => User::inRandomOrder()->value('id'),
            'table_id' => Table::inRandomOrder()->value('id'),
            'status' => 1,
        ];
    }
}
