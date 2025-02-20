<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {


        User::create([
            'name' => 'Ari Syafri',
            'username' => 'ari15',
            'email' => 'Ar@gmail.com',
            'password' => bcrypt('12345')
        ]);

        // User::create([
        //     'name' => 'Agus',
        //     'email' => 'Ags@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        // User::create([
        //     'name' => 'Lukman',
        //     'email' => 'Luck@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        User::factory(3)->create();

        // Category::create([
        //     'name' => 'Web Programming',
        //     'slug' => 'web-programming'
        // ]);

        // Category::create([
        //     'name' => 'personal',
        //     'slug' => 'personal'
        // ]);

        Category::factory(3)->create();



        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt officiis nihil laudantium, saepe consectetur tempora dignissimos illum, consequatur tempore provident ducimus modi hic porro aliquam laborum eos facilis nobis? Sed, veritatis unde? Architecto officiis maiores repudiandae. Quia pariatur veritatis qui',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt officiis nihil laudantium, saepe consectetur tempora dignissimos illum, consequatur tempore provident ducimus modi hic porro aliquam laborum eos facilis nobis? Sed, veritatis unde? Architecto officiis maiores repudiandae. Quia pariatur veritatis qui, numquam amet laborum fuga distinctio in quo eaque aliquam ratione maxime aspernatur modi obcaecati labore et error libero saepe quas. Nostrum, adipisci accusamus! Illum nemo eveniet quae tenetur maiores, eligendi enim, nihil dolorem modi quaerat exercitationem, praesentium eum! Ullam voluptatem cum earum cumque nesciunt sunt quasi facilis facere amet tempora, dolores soluta illum sit maiores dolorum! Dolorem, doloremque saepe! Repellat.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt officiis nihil laudantium, saepe consectetur tempora dignissimos illum, consequatur tempore provident ducimus modi hic porro aliquam laborum eos facilis nobis? Sed, veritatis unde? Architecto officiis maiores repudiandae. Quia pariatur veritatis qui',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt officiis nihil laudantium, saepe consectetur tempora dignissimos illum, consequatur tempore provident ducimus modi hic porro aliquam laborum eos facilis nobis? Sed, veritatis unde? Architecto officiis maiores repudiandae. Quia pariatur veritatis qui, numquam amet laborum fuga distinctio in quo eaque aliquam ratione maxime aspernatur modi obcaecati labore et error libero saepe quas. Nostrum, adipisci accusamus! Illum nemo eveniet quae tenetur maiores, eligendi enim, nihil dolorem modi quaerat exercitationem, praesentium eum! Ullam voluptatem cum earum cumque nesciunt sunt quasi facilis facere amet tempora, dolores soluta illum sit maiores dolorum! Dolorem, doloremque saepe! Repellat.',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);


        // Post::create([
        //     'title' => 'judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt officiis nihil laudantium, saepe consectetur tempora dignissimos illum, consequatur tempore provident ducimus modi hic porro aliquam laborum eos facilis nobis? Sed, veritatis unde? Architecto officiis maiores repudiandae. Quia pariatur veritatis qui',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt officiis nihil laudantium, saepe consectetur tempora dignissimos illum, consequatur tempore provident ducimus modi hic porro aliquam laborum eos facilis nobis? Sed, veritatis unde? Architecto officiis maiores repudiandae. Quia pariatur veritatis qui, numquam amet laborum fuga distinctio in quo eaque aliquam ratione maxime aspernatur modi obcaecati labore et error libero saepe quas. Nostrum, adipisci accusamus! Illum nemo eveniet quae tenetur maiores, eligendi enim, nihil dolorem modi quaerat exercitationem, praesentium eum! Ullam voluptatem cum earum cumque nesciunt sunt quasi facilis facere amet tempora, dolores soluta illum sit maiores dolorum! Dolorem, doloremque saepe! Repellat.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'judul Keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt officiis nihil laudantium, saepe consectetur tempora dignissimos illum, consequatur tempore provident ducimus modi hic porro aliquam laborum eos facilis nobis? Sed, veritatis unde? Architecto officiis maiores repudiandae. Quia pariatur veritatis qui',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt officiis nihil laudantium, saepe consectetur tempora dignissimos illum, consequatur tempore provident ducimus modi hic porro aliquam laborum eos facilis nobis? Sed, veritatis unde? Architecto officiis maiores repudiandae. Quia pariatur veritatis qui, numquam amet laborum fuga distinctio in quo eaque aliquam ratione maxime aspernatur modi obcaecati labore et error libero saepe quas. Nostrum, adipisci accusamus! Illum nemo eveniet quae tenetur maiores, eligendi enim, nihil dolorem modi quaerat exercitationem, praesentium eum! Ullam voluptatem cum earum cumque nesciunt sunt quasi facilis facere amet tempora, dolores soluta illum sit maiores dolorum! Dolorem, doloremque saepe! Repellat.',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'judul Kelima',
        //     'slug' => 'judul-kelima',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt officiis nihil laudantium, saepe consectetur tempora dignissimos illum, consequatur tempore provident ducimus modi hic porro aliquam laborum eos facilis nobis? Sed, veritatis unde? Architecto officiis maiores repudiandae. Quia pariatur veritatis qui',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt officiis nihil laudantium, saepe consectetur tempora dignissimos illum, consequatur tempore provident ducimus modi hic porro aliquam laborum eos facilis nobis? Sed, veritatis unde? Architecto officiis maiores repudiandae. Quia pariatur veritatis qui, numquam amet laborum fuga distinctio in quo eaque aliquam ratione maxime aspernatur modi obcaecati labore et error libero saepe quas. Nostrum, adipisci accusamus! Illum nemo eveniet quae tenetur maiores, eligendi enim, nihil dolorem modi quaerat exercitationem, praesentium eum! Ullam voluptatem cum earum cumque nesciunt sunt quasi facilis facere amet tempora, dolores soluta illum sit maiores dolorum! Dolorem, doloremque saepe! Repellat.',
        //     'category_id' => 2,
        //     'user_id' => 3
        // ]);

        // Post::create([
        //     'title' => 'judul Keenam',
        //     'slug' => 'judul-keenam',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt officiis nihil laudantium, saepe consectetur tempora dignissimos illum, consequatur tempore provident ducimus modi hic porro aliquam laborum eos facilis nobis? Sed, veritatis unde? Architecto officiis maiores repudiandae. Quia pariatur veritatis qui',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt officiis nihil laudantium, saepe consectetur tempora dignissimos illum, consequatur tempore provident ducimus modi hic porro aliquam laborum eos facilis nobis? Sed, veritatis unde? Architecto officiis maiores repudiandae. Quia pariatur veritatis qui, numquam amet laborum fuga distinctio in quo eaque aliquam ratione maxime aspernatur modi obcaecati labore et error libero saepe quas. Nostrum, adipisci accusamus! Illum nemo eveniet quae tenetur maiores, eligendi enim, nihil dolorem modi quaerat exercitationem, praesentium eum! Ullam voluptatem cum earum cumque nesciunt sunt quasi facilis facere amet tempora, dolores soluta illum sit maiores dolorum! Dolorem, doloremque saepe! Repellat.',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);

    }
}
