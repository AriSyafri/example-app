
@extends('dashboard.layout.main')

@section('container')


<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h1 class="mb-3">{{ $post->title }}</h1>

            <a href="/dashboard/posts/" class="btn btn-success"><span data-feather="arrow-left"></span> Back to my post</a>
            <a href="/dashboard/posts/{{ $post->slug }}/edit" method="post" class="btn btn-warning"><span data-feather="edit"></span> Edit</a>


            <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">

                @method('delete')
                @csrf
                <button class="btn btn-danger" onclick="return confirm('are you sure ?')"><span data-feather="x-circle"></span> Delete</button>

            </form>

            <img src="/img/prog.jpg" alt="{{ $post->category->name }}" class="img-fluid mt-3">

            <article class="my-3 fs-6">
                {!! $post->body !!}


            </article>

        </div>
    </div>

</div>


@endsection
