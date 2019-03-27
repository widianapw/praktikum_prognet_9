@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Admin Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    You are logged in as admin!<br>
                    <a href="/admin/product_cat">kategori produk</a><br>
                    <a href="/admin/product">Produk</a><br>
                    <a href="/admin/courier">Kurir</a><br>
                    <a href="/admin/product_img/create">product_img</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
