<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Like;

class LikesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Like::factory()->count(50)->create();
    }
}
