@extends('frontEnd.layouts.master')
@section('title','Detail Page')
@section('slider')
@endsection
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                @include('frontEnd.layouts.category_menu')
            </div>
            <div class="col-sm-9 padding-right">
                @if(Session::has('message'))
                    <div class="alert alert-success text-center" role="alert">
                        {{Session::get('message')}}
                    </div>
                @endif
                @if(Session::has('success'))
                    <div class="alert alert-success text-center" role="alert">
                        {{Session::get('success')}} <b><a href="/viewcart">View cart</a></b>
                    </div>
                @endif
        <div class="product-details"><!--product-details-->

            <div class="col-sm-5">
                <div class="easyzoom easyzoom--overlay easyzoom--with-thumbnails">
                    <a href="{{url('images/large',$detail_product->image_name)}}">
                        <img src="{{url('images/small',$detail_product->image_name)}}" alt="" id="dynamicImage"/>
                    </a>
                </div>

                <ul class="thumbnails" style="margin-left: -10px;">
                    <li><table>
                        @foreach($imagesGalleries as $imagesGallery)
                            <td><a href="{{url('images/large',$imagesGallery->image_name)}}" data-standard="{{url('images/small',$imagesGallery->image_name)}}">
                                <img src="{{url('images/small',$imagesGallery->image_name)}}" alt="" width="75" style="padding: 8px;">
                            </a></td>
                        @endforeach
                    </li></table>
                </ul>
            </div>
            <div class="col-sm-7">
                <form action="{{route('addToCart')}}" method="post" role="form">
                    @csrf
                    <input type="hidden" name="product_id" value="{{$detail_product->id}}">
                    <input type="hidden" name="product_name" value="{{$detail_product->product_name}}">
                    <input type="hidden" name="price" value="{{$detail_product->price}}" id="dynamicPriceInput">
                    <input type="hidden" name="stock" value="{{$detail_product->stock}}">

                    <div class="product-information"><!--/product-information-->
                        <img src="{{asset('frontEnd/images/product-details/new.jpg')}}" class="newarrival" alt="" />
                        <h2>{{$detail_product->product_name}}</h2>
                            
                        {{-- <p>Code ID: {{$detail_product->p_code}}</p> --}}
                        {{-- <span>
                            <select name="size" id="idSize" class="form-control">
                        	<option value="">Select Size</option>
                            @foreach($detail_product->attributes as $attrs)
                                <option value="{{$detail_product->id}}-{{$attrs->size}}">{{$attrs->size}}</option>
                            @endforeach
                        </select>
                        </span><br> --}}
                        
                        <span>
                            <span id="dynamic_price">Rp {{number_format($detail_product->price)}}</span><br>
                            <table>
                                <td><label>Quantity:</label></td>
                                <td><input type="number" name="quantity" size="3" id="inputStock"/></td>
                                <td>@if($detail_product->stock >0)
                            <button type="submit" class="btn btn-fefault cart" id="buttonAddToCart">
                                <i class="fa fa-shopping-cart"></i>
                                Add to cart
                            </button>
                            @endif</td>
                            
                            
                        

                            
                            </table>
                        </span>
                        
                        <p><b>Availability:</b>
                            @if($detail_product->stock >0)
                                <span id="availableStock">In Stock</span>
                            @else
                                <span id="availableStock">Out of Stock</span>
                            @endif
                        </p>
                        <p><b>Condition:</b> New</p>

                        <p><b>Discount:</b>@if(empty($dis)) None @else {{$dis->percentage}}% untill {{date('d M Y', strtotime($dis->end))}} @endif</p>
                        <p>
                            @php
                                $a = 5;
                            @endphp
                            @for($i=0 ; $i< $detail_product->product_rate; $i++)
                                @php
                                    $a = $a-1;
                                @endphp
                                <span style="color: gold;" class="fa fa-star checked"></span>
                            @endfor
                            @for($i=0 ; $i< $a; $i++)
                                <span style="color: grey;" class="fa fa-star"></span>
                            @endfor
                        </p>
                        {{-- <a href=""><img src="{{asset('frontEnd/images/product-details/share.png')}}" class="share img-responsive"  alt="" /></a> --}}
                    </div><!--/product-information-->
                </form>

            </div>
        </div><!--/product-details-->

        <div class="category-tab shop-details-tab"><!--category-tab-->
            <div class="col-sm-12">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#reviews" data-toggle="tab">Reviews</a></li>
                    {{-- <li><a href="#companyprofile" data-toggle="tab">Company Profile</a></li>
                    <li><a href="#reviews" data-toggle="tab">Reviews (5)</a></li> --}}
                </ul>
            </div>
            <div class="tab-content" id="reviews">
                <div class="tab-pane fade active in"  >
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-9">
                        @php
                            $jumreview = $review->count();
                        @endphp
                        
                            @foreach($review as $review)
                                <p><b>{{$review->name}}</b></p>
                                @php
                                    $a = 5;
                                    
                                @endphp
                                @for($i=0 ; $i< $review->rate; $i++)
                                    @php
                                        $a = $a-1;
                                    @endphp
                                    <span style="color: gold;" class="fa fa-star checked"></span>
                                @endfor
                                @for($i=0 ; $i< $a; $i++)
                                    <span style="color: grey;" class="fa fa-star"></span>
                                @endfor
                                <input style="background-color: white;" type="text" readonly="" class="form-control" value="{{$review->content}}">

                               

                                @foreach($response as $respon)
                                    @if($respon->review_id == $review->id)
                                        <br>
                                        <p  style="float: right; margin-right: 30px"><b>Admin</b></p>
                                        <input style="background-color: white; text-align: right;" type="text" readonly="" class="form-control" value="{{$respon->content}}">
                                        
                                    @endif
                                @endforeach
                            <hr>
                            @endforeach

                        

                            




                        </div>
                        </div>
                    </div>
                </div>

               

            </div>
        </div><!--/category-tab-->
    </div>
</div>
</div>

<script type="text/javascript">
    function myFunction() {
      var show = document.getElementById("tampilkan");
      var tampil = document.getElementById("tampil");
      if (tampil.style.display == "none"){
        tampil.style.display = "block";
        
      } else {
        text.style.display = "none";
        
      }
</script>

              
@endsection