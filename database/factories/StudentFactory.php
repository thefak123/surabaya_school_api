<?php

namespace Database\Factories;

use App\Models\School;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Student>
 */
class StudentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => fake()->name(),
            'address' => fake()->address(),
            'gender_id' => fake()->randomElement([1,2]),
            'height' => fake()->numberBetween(145, 190),
            'school_id' => School::factory(),
            'phone_number' => fake()->phoneNumber(),
            
        ];
    }
}
