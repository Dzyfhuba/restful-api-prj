<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ClassroomFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $subjects = ['physics', 'math', 'biology', 'chemical', 'history', 'astronomy', 'language', 'economy'];
        return [
            'name' => $this->faker->firstName(),
            'classroom' => $subjects[array_rand($subjects)],
            'latitude' => -7.1623835,
            'longitude' => 112.616019
        ];
    }
}
