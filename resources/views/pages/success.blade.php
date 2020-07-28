


@extends('layouts.success')

@section('title','Success')

@section('content')

  <main>

    <div class="section-success d-flex align-items-center">
      <div class="col text-center">
      <img src="{{url('frontend/images/kotak pos.png')}}" alt="">
        <h1>Yeay Success</h1>
        <p>
          We've sent you email for trip instruction
          <br/>
          plase read it as well
        </p>
            <a href="{{url('/')}}" class="btn btn-home-page mt-3 px-5">
          Home Page
        </a>
      </div>
    </div>
  </main>

@endsection
