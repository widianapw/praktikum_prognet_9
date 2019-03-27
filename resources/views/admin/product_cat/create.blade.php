@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Register') }}</div>

                <div class="card-body">

<form method="post" action="/admin/product_cat">
	@csrf
	<div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Nama Kategori') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control{{ $errors->has('nama_kategori') ? ' is-invalid' : '' }}" name="nama_kategori" value="{{ old('nama_kategori') }}" required="" autofocus>

                                @if ($errors->has('nama_kategori'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('nama_kategori') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
	<br>
	<input type="submit" name="submit" value="tambahkan">
</form>
</div>
            </div>
        </div>
    </div>
</div>
@endsection