@extends('frontEnd.layouts.master')
@section('title','Cart Page')
@section('slider')
@endsection
@section('content')
    <section id="cart_items">
        <div class="container">
            @if(Session::has('message'))
                <div class="alert alert-success text-center" role="alert">
                    {{Session::get('message')}}
                </div>
            @endif
            <div class="table-responsive cart_info">
                <table class="table table-condensed">
                    <thead>
                    <tr class="cart_menu">
                        <td class="image">Item</td>
                        <td class="description"></td>
                        <td class="price">Price</td>
                        <td class="quantity">Quantity</td>
                        <td class="total">Total</td>
                        <td></td>
                    </tr>
                    </thead>
                    <tbody>
                        @foreach($cart_datas as $cart_data)
                        <?php
                                $image_products=DB::table('products')->select('image_name')->join('product_images','product_images.product_id','=','products.id')->where('products.id',$cart_data->product_id)->get();
                                $image_data = DB::table('products')->where('products.id',$cart_data->product_id)->get()->first();
                        ?>
                        
                            
                            <input type="hidden" name="stock" id="stock-{{$cart_data->product_id}}" value="{{$cart_data->stock}}">
                            <tr id="tr-{{$cart_data->product_id}}">
                                <td class="cart_product">
                                    @foreach($image_products as $image_product)
                                        <a href=""><img src="{{url('images/small',$image_product->image_name)}}" alt="" style="width: 100px;"></a>
                                    @endforeach
                                </td>
                                <td class="cart_description">
                                    <h4><a href="">{{$image_data->product_name}}</a></h4>
                                    
                                </td>
                                <td class="cart_price">
                                    <p>$ {{$image_data->price}}</p>
                                </td>
                                <td class="cart_quantity">
                                    <div class="cart_quantity_button">

                                        
                                        <a class="cart_quantity_down" id="klik1-{{$cart_data->product_id}}" href="#"> - </a>
                                        <input class="cart_quantity_input-{{$cart_data->product_id}}" type="text" name="quantity" value="{{$cart_data->qty}}" disabled="" autocomplete="off" size="2">
                                        <a class="cart_quantity_up" id="klik-{{$cart_data->product_id}}"  href="#"> + </a>

                                        <script type="text/javascript">
                                            $(document).ready(function(){
                                                $('#klik-{{$cart_data->product_id}}').click(function(){
                                                    var qty_awal = $('.cart_quantity_input-{{$cart_data->product_id}}').val();
                                                    var stock = parseInt($('#stock-{{$cart_data->product_id}}').val());
                                                    var qty_akhir = parseInt(qty_awal) + 1;
                                                    if (qty_akhir > stock) {
                                                        alert("stok tidak mencukupi!");
                                                    }
                                                    else{
                                                        $('.cart_quantity_input-{{$cart_data->product_id}}').val(qty_akhir);    
                                                    }
                                                    event.preventDefault();
                                                });

                                                $('#klik1-{{$cart_data->product_id}}').click(function(){
                                                    var qty_awal = $('.cart_quantity_input-{{$cart_data->product_id}}').val();
                                                    var qty_akhir = parseInt(qty_awal) - 1;
                                                    if (qty_akhir == 0) {
                                                        var qty_akhir = 1;
                                                    }
                                                    $('.cart_quantity_input-{{$cart_data->product_id}}').val(qty_akhir);
                                                    event.preventDefault();
                                                });

                                                $('#hapus-{{$cart_data->product_id}}').click(function(){
                                                    console.log("terklik");
                                                    $('#tr-{{$cart_data->product_id}}').remove();
                                                });

                                            });
                                        </script>
                                    </div>
                                </td>
                                <td class="cart_total">
                                    <p class="cart_total_price">$ {{$image_data->price*$cart_data->qty}}</p>
                                </td>
                                <td class="cart_delete">
                                    <a class="cart_quantity_delete" id="hapus-{{$cart_data->product_id}}" {{-- href="{{url('/cart/deleteItem',$cart_data->id)}}" --}}><i class="fa fa-times"></i></a>
                                </td>
                            </tr>
                            
                             
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        

    </section> <!--/#cart_items-->

    <section id="do_action">
        <div class="container">
            <div class="heading">
                <h3>What would you like to do next?</h3>
                <p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    @if(Session::has('message_coupon'))
                        <div class="alert alert-danger text-center" role="alert">
                            {{Session::get('message_coupon')}}
                        </div>
                    @endif
                    <div class="chose_area" style="padding: 20px;">
                        <form action="{{url('/apply-coupon')}}" method="post" role="form">
                            <input type="hidden" name="_token" value="{{csrf_token()}}">
                            <input type="hidden" name="Total_amountPrice" value="{{$total_price}}">
                            <div class="form-group">
                                <label for="coupon_code">Coupon Code</label>
                                <div class="controls {{$errors->has('coupon_code')?'has-error':''}}">
                                    <input type="text" class="form-control" name="coupon_code" id="coupon_code" placeholder="Promotion By Coupon">
                                    <span class="text-danger">{{$errors->first('coupon_code')}}</span>
                                </div>
                                <button type="submit" class="btn btn-primary">Apply</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-sm-6">
                    @if(Session::has('message_apply_sucess'))
                        <div class="alert alert-success text-center" role="alert">
                            {{Session::get('message_apply_sucess')}}
                        </div>
                    @endif
                    <div class="total_area">
                        <ul>
                            @if(Session::has('discount_amount_price'))
                                <li>Sub Total <span>$ {{$total_price}}</span></li>
                                <li>Coupon Discount (Code : {{Session::get('coupon_code')}}) <span>$ {{Session::get('discount_amount_price')}}</span></li>
                                <li>Total <span>$ {{$total_price-Session::get('discount_amount_price')}}</span></li>
                            @else
                                <li>Total <span>$ {{$total_price}}</span></li>
                            @endif
                        </ul>
                        <div style="margin-left: 20px;"><a class="btn btn-default check_out" href="{{url('/check-out')}}">Check Out</a></div>
                    </div>
                </div>
            </div>
        </div>
    </section><!--/#do_action-->
@endsection