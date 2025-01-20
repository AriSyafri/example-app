
@extends('layouts.main')

@section('container')

    <h1 class="mb-5">{{ $post->title }}</h1>

    <p>By. Ari Syafri in <a href="/categories/{{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }} </a></p>

    {!! $post->body !!}

    <a href="/posts">Back to Post</a>

@endsection
