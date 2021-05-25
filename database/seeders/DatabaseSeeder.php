<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory(1)->create([
            'email' => 'example@example.org',
            'api_token' => 'ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn',
        ]);
        \App\Models\User::factory(9)->create();
        $this->call([
            DishSeeder::class,
            TableSeeder::class,
            InvoiceSeeder::class,
        ]);
    }
}
