<?php

namespace Database\Factories;
use App\Models\Post;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Seo>
 */
class SeoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "post_id" =>  Post::all() -> random()->id ,
           "seo_keyword"=> fake() ->colorName(),
            "seo_title"=> fake() -> safari(),
            "seo_description"=> fake() -> text(),
            "seo_script"=> fake() -> text()
        ];
    }
}
