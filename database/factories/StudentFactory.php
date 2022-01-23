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
        $number = $this->generateUniqueNumber($date);

        return [
            'name' => $this->faker->name(),
            'number' => $number,
            'birth' => $birth
        ];
    }

    public function generateUniqueNumber($date)
    {
        $i = 1;
        do {
            $number = $date->format('dmY').sprintf('%03d', $i++);
        } while (Student::where("number", $number)->first());

        return $number;
    }

}
