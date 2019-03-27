@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Register') }}</div>

                <div class="card-body">

<form method="post" action="/admin/courier">
	@csrf
	<div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Nama Kurir') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control{{ $errors->has('courier') ? ' is-invalid' : '' }}" name="courier" value="{{ old('courier') }}" required="" autofocus>

                                @if ($errors->has('courier'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('courier') }}</strong>
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