@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Déposer une annonce</h1>
    <hr>
    <form method="POST" action="{{ route('ad.store') }}">
    @csrf 
  <div class="form-group">
    <label for="title">Titre de l'annonce</label>
    <input type="text" class="form-control {{ $errors->has('title') ? 'is-invalid' : '' }}"
    id="title" aria-describedby="title" name="title">
    @if ($errors->has('title'))
      <span class="invalid-feedback">{{ $errors->first('title') }}</span>
    @endif
  </div>
  <div class="form-group">
    <label for="description">Desription de l'annonce</label>
    <textarea name="description" class="form-control" id="description" cols="30" rows="10"></textarea>
  </div>  
  <div class="form-group">
    <label for="localisation">Localisation</label>
    <input type="text" class="form-control" id="localisation" name="localisation">
  </div>
  <div class="form-group">
    <label for="price">Prix</label>
    <input type="text" class="form-control" id="price" name="price">
  </div>
  @guest
    <h1>Vos Informations</h1>
    <hr>
    <div class="form-group">
      <label for="name">Votre nom</label>
      <input type="text" class="form-control {{ $errors->has('name') ? 'is-invalid' : '' }}"
      id="name" name="name">
      @if ($errors->has('name'))
      <span class="invalid-feedback">{{ $errors->first('name') }}</span>
      @endif
    </div>
    <div class="form-group">
      <label for="email">Votre email</label>
      <input type="email" class="form-control" id="email" name="email">
    </div>
    <div class="form-group">
      <label for="password">Votre mot de passe</label>
      <input type="password" class="form-control" id="password" name="password">
    </div>
    <div class="form-group">
      <label for="password_confirmation">Confirmer Votre mot de passe</label>
      <input type="password" class="form-control" id="password_confirmation" name="password_confirmation">
    </div>
  @endguest
  <button type="submit" class="btn btn-primary">Soumettre une annonce</button>
</form>
</div>
@endsection