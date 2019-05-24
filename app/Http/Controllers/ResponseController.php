<?php

namespace App\Http\Controllers;

use App\Response;
use App\Review;
use App\Admin;
use App\User;
use App\Product;

use App\Notifications\UserNotification;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class ResponseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $response = Review::select('product_reviews.id','product_name','product_id','user_id','rate','content','status','product_reviews.created_at')->join('products','product_reviews.product_id','=','products.id')->orderBy('product_reviews.created_at','desc')
            ->get();

        return view('admin/response',compact("response"));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function createResponse($request)
    {
        $review = Review::where('id',$request)->get()->first();
        $product = Product::join('product_images','product_images.product_id','=','products.id')->first();

        return view('/admin/create_response',compact('review','product'));
    }

    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $response = new Response;
        $response->review_id = $request->review_id;
        $response->admin_id = Auth::guard('admin')->user()->id;
        $response->content = $request->response;
        $response->save();

        $review = Review::where('id',$request->review_id)->first();
        $review->status = "replied";
        $review->save();



        $response = Review::select('product_reviews.id','product_name','product_id','user_id','rate','content','status')->join('products','product_reviews.product_id','=','products.id')->orderBy('product_reviews.created_at','desc')
            ->get();

        $user = User::find($review->user_id);
        $user->notify(new UserNotification("<a href = '/product-detail/$review->product_id'>Ada review yang di respon admin</a>"));

        return view('admin/response',compact("response"));

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Response  $response
     * @return \Illuminate\Http\Response
     */
    public function show(Response $response)
    {
        
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Response  $response
     * @return \Illuminate\Http\Response
     */
    public function edit(Response $response)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Response  $response
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Response $response)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Response  $response
     * @return \Illuminate\Http\Response
     */
    public function destroy(Response $response)
    {
        
    }
}
