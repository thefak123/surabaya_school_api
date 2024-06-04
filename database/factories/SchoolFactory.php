<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\School>
 */
class SchoolFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => "Sekolah ". fake()->name(),
            'address' => fake()->address(),
            'postal_code' => fake()->postcode(),
            'school_type_id' => fake()->randomElement([1,2,3]),
            'phone_number' => fake()->phoneNumber()
        ];
    }
}
