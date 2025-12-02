<?php

namespace Database\Seeders;

use App\Models\ProductMasterList;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        ProductMasterList::factory()->create([
            'product_id' => '4450',
            'type' => 'Smartphone',
            'branch' => 'Apple',
            'model' => 'iPhone SE',
            'capacity' => '2GB/16GB',
            'quantity' => '13'
        ]);
    }
}
