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

        ProductMasterList::factory()->create(
            [
                'product_id' => '4450',
                'type' => 'Smartphone',
                'branch' => 'Apple',
                'model' => 'iPhone SE',
                'capacity' => '2GB/16GB',
                'quantity' => '13',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'product_id' => '4768',
                'type' => 'Smartphone',
                'branch' => 'Apple',
                'model' => 'iPhone SE',
                'capacity' => '2GB/32GB',
                'quantity' => '30',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'product_id' => '4451',
                'type' => 'Smartphone',
                'branch' => 'Apple',
                'model' => 'iPhone SE',
                'capacity' => '2GB/64GB',
                'quantity' => '20',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'product_id' => '4574',
                'type' => 'Smartphone',
                'branch' => 'Apple',
                'model' => 'iPhone SE',
                'capacity' => '2GB/128GB',
                'quantity' => '16',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'product_id' => '6039',
                'type' => 'Smartphone',
                'branch' => 'Apple',
                'model' => 'iPhone SE (2020)',
                'capacity' => '3GB/64GB',
                'quantity' => '18',
                'created_at' => now(),
                'updated_at' => now()
            ],
            
    );
    }
}
