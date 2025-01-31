{{--
@dd($posts)
 --}}

 @extends('layouts.main')

 @section('container')

    <h1 class="mb-5">Author List</h1>

    <div class="container">
        <div class="row justify-content-center">

            @foreach ($authors as $author)

                <div class="col-md-3">

                    <div class="card">
                        <img src="/img/thumb.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                        <h5 class="card-title"><a href="/posts?author={{ $author->username }}" class="text-decoration-none">{{ $author->name }}</a></h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                        <ul class="list-group list-group-flush">
                        <li class="list-group-item"><a href="/posts?author={{ $author->username }}" class="btn btn-primary text-decoration-none">Go to blog...</a></li>
                        </ul>
                    </div>

                </div>

            @endforeach

        </div>
    </div>


 @endsection
