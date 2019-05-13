<?php

namespace App\Http\Controllers;

use App\Cart;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class OrderController extends Controller
{
    public function index(Request $request){
        $data = $request->all();
        $total=$data["total_price"] + $data["service"];
        $cart_datas=Cart::select('carts.id','user_id','product_id','stock','qty','status','price')
            ->join('products','carts.product_id','=','products.id')
            ->where('user_id',Auth::id())
            ->where('status','notyet')
            ->groupBy('carts.id')
            ->get();
        return view('checkout.review_order',compact('data','total','cart_datas'));
    }

    public function order(Request $request){
        $input_data=$request->all();
        $total_price = $request["data"][1];
        $provinsi = $request["data"][2];
        $kota = $request["data"][3];
        $alamat = $request["data"][4];
        $nama = $request["data"][5];
        $telpon = $request["data"][6];
        $service = $request["data"][7];
        return redirect('/cod');
    }

    public function cod(){
        
        $user_order=User::where('id',Auth::id())->first();
        return view('payment.cod',compact('user_order'));
    }
    public function paypal(Request $request){
        $who_buying=Orders_model::where('users_id',Auth::id())->first();
        return view('payment.paypal',compact('who_buying'));
    }
}
