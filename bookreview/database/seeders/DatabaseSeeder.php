<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\category;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {

        $this->call([
            //UserSeeder::class,
//            CategorySeeder::class,
//            ReviewSeeder::class,
            PostSeeder::class,
            SeoSeeder::class,
        ]);
    }
}