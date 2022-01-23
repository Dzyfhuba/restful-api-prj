<?php

namespace Database\Factories;

use App\Models\Student;
use Illuminate\Database\Eloquent\Factories\Factory;

class StudentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $date = $this->faker->dateTimeBetween('-30 years', '-20 years');
        $birth = $date->format('d-m-Y');
        $number = $date->format('dmY');

        return [
            'name' => $this->faker->name(),
            'number' => $number,
            'birth' => $birth
        ];
    }

    public function generateUniqueNumber()
    {
        do {
            $number = random_int(100000, 999999);
        } while (Student::where("number", $number)->first());

        return $number;
    }

}
