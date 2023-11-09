<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title' => fake()->title(),
            'name' => fake()->slug(),
            'preview_image' => fake()->imageUrl(),
            'content' => fake() ->text(),
            'description' => fake() -> text(),
            'user_id' => 1,
            'category_id' => 1,

        ];
    }
}
