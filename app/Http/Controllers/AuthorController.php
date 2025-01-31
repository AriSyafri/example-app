<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class AuthorController extends Controller
{
    public function index()
    {
        return view('authors', [
            'title' => 'List Authors',
            "active" => 'authors',
            'authors' => User::all(),

        ]);
    }
}
