<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
{
    return [
        'meta_description' => $this->faker->sentence($nbWords = 6, $variableNbWords = true),
        'meta_keywords' => implode(',', $this->faker->words($nb = 3, $asText = false)),
        'excerpt' => $this->faker->paragraph($nbSentences = 4, $variableNbSentences = true),
        'body' => $this->faker->paragraphs($nb = 8, $asText = true),
        'active' => true,
    ];
}
}
