<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', function () {
    return view('home', [
        "title" => "Home"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "name" => "Ari Syafri",
        "email" => "ari@gmail.com",
        "image" => "ari.jpg"
    ]);
});


Route::get('/blog', function () {




$blog_posts = [
    [
        "title" => "Judul Post Pertama",
        "author" => "Ari Syafri",
        "body" => "
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias similique et, sunt temporibus aperiam a voluptate consequatur. Odio autem totam, similique, cum maxime dolores porro amet corporis at quidem expedita temporibus vel minus animi id facilis delectus corrupti, dolorem pariatur beatae. Vel rerum beatae earum exercitationem nisi numquam eveniet consectetur, quia veritatis iste enim ipsa blanditiis praesentium officia? Ipsa, ex soluta autem quos nostrum illo aut eveniet enim vel, sunt vero quae atque! Earum obcaecati, ea deserunt explicabo maiores iusto!"
    ],
    [
        "title" => "Judul Post Kedua",
        "author" => "Ujang Agus",
        "body" => "
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias similique et, sunt temporibus aperiam a voluptate consequatur. Odio autem totam, similique, cum maxime dolores porro amet corporis at quidem expedita temporibus vel minus animi id facilis delectus corrupti, dolorem pariatur beatae. Vel rerum beatae earum exercitationem nisi numquam eveniet consectetur, quia veritatis iste enim ipsa blanditiis praesentium officia? Ipsa, ex soluta autem quos nostrum illo aut eveniet enim vel, sunt vero quae atque! Earum obcaecati, ea deserunt explicabo maiores iusto!"
    ],
];


    return view('posts', [
        "title" => "Blog",
        "posts" => $blog_posts
    ]);
});
