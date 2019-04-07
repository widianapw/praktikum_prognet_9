@extends('backEnd.layouts.master')
@section('title','Add Category')
@section('content')
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
                    <h5>Add New Courier</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="/admin/courier">
                    @csrf
                        <div class="control-group{{$errors->has('courier')?' has-error':''}}">
                            <label class="control-label">Category Name :</label>
                            <div class="controls">
                                <input id="name" type="text" class="form-control{{ $errors->has('courier') ? ' is-invalid' : '' }}" name="courier" value="{{ old('courier') }}" required="" autofocus>

                                @if ($errors->has('courier'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('courier') }}</strong>
                                    </span>
                                @endif
                                <span class="text-danger" id="chCategory_name" style="color: red;">{{$errors->first('name')}}</span>
                            </div>
                        </div>
                         <div class="control-group">
                            <label for="control-label"></label>
                            <div class="controls">
                                <input type="submit" name="submit" value="Tambahkan" class="btn btn-success">
                            </div>
                        </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        </div>
    </div>
@endsection
@section('jsblock')
    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script src="{{ asset('js/jquery.ui.custom.js') }}"></script>
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/jquery.uniform.js') }}"></script>
    <script src="{{ asset('js/select2.min.js') }}"></script>
    <script src="{{ asset('js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('js/jquery.validate.js') }}"></script>
    <script src="{{ asset('js/matrix.js') }}"></script>
    <script src="{{ asset('js/matrix.form_validation.js') }}"></script>
    <script src="{{ asset('js/matrix.tables.js') }}"></script>
    <script src="{{ asset('js/matrix.popover.js') }}"></script>
@endsection