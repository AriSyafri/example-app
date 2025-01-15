<?php

namespace App\Models;


class Post
{
    private static $blog_posts = [
        [    "title" => "Judul Uji",
            "slug" => "judul-post-pertama",
            "author" => "Ari Syafri",
            "body" => "
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias similique et, sunt temporibus aperiam a voluptate consequatur. Odio autem totam, similique, cum maxime dolores porro amet corporis at quidem expedita temporibus vel minus animi id facilis delectus corrupti, dolorem pariatur beatae. Vel rerum beatae earum exercitationem nisi numquam eveniet consectetur, quia veritatis iste enim ipsa blanditiis praesentium officia? Ipsa, ex soluta autem quos nostrum illo aut eveniet enim vel, sunt vero quae atque! Earum obcaecati, ea deserunt explicabo maiores iusto!"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" =>"judul-post-kedua",
            "author" => "Ujang Agus",
            "body" => "
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias similique et, sunt temporibus aperiam a voluptate consequatur. Odio autem totam, similique, cum maxime dolores porro amet corporis at quidem expedita temporibus vel minus animi id facilis delectus corrupti, dolorem pariatur beatae. Vel rerum beatae earum exercitationem nisi numquam eveniet consectetur, quia veritatis iste enim ipsa blanditiis praesentium officia? Ipsa, ex soluta autem quos nostrum illo aut eveniet enim vel, sunt vero quae atque! Earum obcaecati, ea deserunt explicabo maiores iusto!"
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        // $post = [];

        // foreach($posts as $p) {
        //     if($p["slug"] === $slug) {
        //         $post = $p;
        //     }
        // }

        return $posts->firstWhere('slug',$slug);
    }

}
