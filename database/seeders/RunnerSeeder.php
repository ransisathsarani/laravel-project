<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class RunnerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('tbm_runners')->insert([
            'external_id' => 'RUNNER_0001',
            'name' => 'Eaglemont',
            'race_id' => 3,
        ]);
    }
}
