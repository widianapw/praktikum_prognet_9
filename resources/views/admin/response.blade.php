@extends('backEnd.layouts.master')
@section('title','Review Response')
@section('content')
    <div id="breadcrumb"> <a href="{{url('/admin')}}" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="{{route('product.index')}}" class="current">Products</a></div>
    <div class="container-fluid">
        @if(Session::has('message'))
            <div class="alert alert-success text-center" role="alert">
                <strong>Well done!</strong> {{Session::get('message')}}
            </div>
        @endif
        <div class="widget-box">
            <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
                <h5>Review Products</h5>
            </div>
            <div class="widget-content nopadding">
                <table class="table table-bordered data-table">
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>Produk</th>
                        <th>User</th>
                        <th>Rate</th>
                        <th>Date</th>
                        <th>Comment</th>
                        <th>Reply</th>
                        <th>Aksi</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($response as $response)
                        <tr class="gradeC">
                            <td>{{$loop->iteration}}</td>
                            <td style="vertical-align: middle;">{{$response->product_name}}</td>
                            <td style="vertical-align: middle;">{{$response->user_id}}</td>
                            <td style="vertical-align: middle;text-align: center;">{{$response->rate}}</td>
                            <td style="vertical-align: middle;text-align: center;">{{$response->created_at}}</td>
                            <td style="vertical-align: middle;">{{$response->content}}</td>
                            
                            <td style="text-align: center;">
                                @if($response->status == NULL)
                                    <a href="/admin/createResponse/{{$response->id}}"><button class="btn btn-success">reply</button></a>
                                @else
                                    <p>Replied</p>
                                @endif
                            </td>
                            <td style="width: 12%; text-align: center;">
                                {{-- <div class="btn-group"> --}}
                                    
                                    <form action="/review/{{$response->id}}" method="POST">
                                        @method("DELETE")
                                        @csrf
                                    <button type="submit" class="btn btn-danger">Delete<i class="fa fa-trash" ></i></button>
                                
                            </form>
                            </td>
                        </tr>

                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
@section('jsblock')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="{{asset('js/jquery.min.js')}}"></script>
    <script src="{{asset('js/jquery.ui.custom.js')}}"></script>
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <script src="{{asset('js/bootstrap-colorpicker.js')}}"></script>
    <script src="{{asset('js/jquery.toggle.buttons.js')}}"></script>
    <script src="{{asset('js/masked.js')}}"></script>
    <script src="{{asset('js/jquery.uniform.js')}}"></script>
    <script src="{{asset('js/select2.min.js')}}"></script>
    <script src="{{asset('js/matrix.js')}}"></script>
    <script src="{{asset('js/matrix.form_common.js')}}"></script>
    <script src="{{asset('js/wysihtml5-0.3.0.js')}}"></script>
    <script src="{{asset('js/jquery.peity.min.js')}}"></script>
    <script src="{{asset('js/bootstrap-wysihtml5.js')}}"></script>
    <script>
        $('.textarea_editor').wysihtml5();
    </script>
    
@endsection