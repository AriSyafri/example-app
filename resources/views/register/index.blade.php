@extends('layouts.main')


@section('container')

<div class="row justify-content-center">
    <div class="col-lg-5">

        <main class="form-registration">
            <h1 class="h3 mb-3 fw-normal text-center">Registration form</h1>

            <form action="/register" method="post">
              <div class="form-floating">
                <input type="text" class="form-control rounded-top" name="name" id="name" placeholder="name">
                <label for="name">Name</label>
              </div>
              <div class="form-floating">
                <input type="text" class="form-control" name="username" id="username" placeholder="username">
                <label for="username">Username</label>
              </div>
              <div class="form-floating">
                <input type="email" class="form-control" name="email" id="email" placeholder="name@example.com">
                <label for="floatingInput">Email address</label>
              </div>
              <div class="form-floating">
                <input type="password" class="form-control" name="password" id="password" placeholder="Password">
                <label for="password">Password</label>
              </div>

              <button class="w-100 btn btn-lg btn-primary mt-3" type="submit">Register</button>

            </form>

            <small class="d-block text-center mt-3">Already Registered ? <a href="/login">Login Now!</a></small>

        </main>

    </div>
</div>


@endsection
