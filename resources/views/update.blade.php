@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Déposer une annonce</h1>
    <hr>
    <form method="POST" action="{{ route('ad.edit',$ad->id) }}">
    @csrf
    @method('put') 
  <div class="form-group">
    <label for="title">Titre de l'annonce</label>
    <input type="text" class="form-control {{ $errors->has('title') ? 'is-invalid' : '' }}"
    id="title" aria-describedby="title" name="title" value={{$ad->title}}>
    @if ($errors->has('title'))
      <span class="invalid-feedback">{{ $errors->first('title') }}</span>
    @endif
  </div>
  <div class="form-group">
    <label for="description">Desription de l'annonce</label>
    <textarea name="description" class="form-control" id="description" cols="30" rows="10" value={{$ad->description}}></textarea>
  </div>  
  <div class="form-group">
    <label for="localisation">Localisation</label>
    <input type="text" class="form-control" id="localisation" name="localisation" value={{$ad->localisation}}>
  </div>
  <div class="form-group">
    <label for="price">Prix</label>
    <input type="text" class="form-control" id="price" name="price" value={{$ad->price}}>
  </div>
  <button type="submit" class="btn btn-primary">Modifier cette annonce</button>
</form>
</div>
@endsection