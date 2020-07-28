@extends('layouts.app')

@section('content')
<main class="login-container">
    <div class="container">
      <div class="row page-login d-flex align-items-center">
        <div class="section-left col-12 col-md-6">
          <h1 class="mb-10 ">  <br/> </h1>
          <img src="frontend/images/login-image.png" class="w-75 d-none d-sm-flex">
        </div>
        <div class="section-right col-12 col-md-4"> 
          <div class="card">
            <div class="card-body">
              <div class="text-center">
                <img src="frontend/images/download.png" class="w-50 mb-4" >
              </div>
                <form method="POST" action="{{ route('login') }}">
                  @csrf
                  <div class="form-group">
                    <label for="email">{{ __('E-Mail Address') }}</label>
                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="off" autofocus> 
                    @error('email')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                  </div>
                  <div class="form-group">
                    <label for="password">{{ __('Password') }}</label>
                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                    @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                  </div>
                  <div class="form-group form-check">
                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                    <label class="form-check-label" for="remember">
                      {{ __('Remember Me') }}
                  </label>
                  </div>
                  <button type="submit" class="btn btn-login btn-block">
                    {{ __('Login') }}
                </button>
                <a href=" {{route('register')}}" class="btn btn-get-started btn-block ">
                     Daftar
                 </a>
                @if (Route::has('password.request'))
                  <a class="btn btn-link" href="{{ route('password.request') }}">
                    {{ __('Saya Lupa Password?') }}</a>
                @endif
                </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
@endsection
