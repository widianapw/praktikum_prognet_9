<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use GuzzleHttp\Client;
use App\Cart;
use App\courier;

class CheckOutController extends Controller
{

  public function __construct()
    {
        $this->middleware('auth:web');
    }


    public function index(){
    	$client = new \GuzzleHttp\Client();
    	try{
    		$response = $client->get('https://api.rajaongkir.com/starter/city',
    			array(
    				'headers' => array(
    					'key' => '248b6738fe208a6df6b1af7ea7f9bebc'
    				)
    			)
    		);
    	}catch(RequestException $e){
    		var_dump($e->getResponse()->getBody()->getContent());
    	}
    	$json = $response->getBody()->getContents();
    	$array_result = json_decode($json,true);
      $hai = $array_result["rajaongkir"]["results"];  
      $jum = count($hai);
      $countries=$hai;
      $user_login=User::where('id',Auth::id())->first();
      $courier=courier::get();
      return view('checkout.index',compact('countries','user_login','courier'));


    }

    public function checkshipping(Request $request){
        $client = new \GuzzleHttp\Client();
        try{
          $response = $client->get('https://api.rajaongkir.com/starter/city',
            array(
              'headers' => array(
                'key' => '248b6738fe208a6df6b1af7ea7f9bebc'
              )
            )
          );
        }catch(RequestException $e){
          var_dump($e->getResponse()->getBody()->getContent());
        }
        $json = $response->getBody()->getContents();
        $array_result = json_decode($json,true);
        $hai = $array_result["rajaongkir"]["results"];  
        $jum = count($hai);
        $countries=$hai;
        $user_login=User::where('id',Auth::id())->first();
        $courier=courier::get();



        $client = new \GuzzleHttp\Client();
        try{
          $response = $client->request('POST','https://api.rajaongkir.com/starter/cost',
            [
              'body' => "origin=80227&destination=".$request->kota."&weight=1000&courier=".$request->kurir,
              // 'body' => "origin=Denpasar&destination=Cirebon".$request->tujuan."&weight=1000&courier=".$request->courier,
              'headers' => [
                
                'key' => '248b6738fe208a6df6b1af7ea7f9bebc',
                'content-type' => 'application/x-www-form-urlencoded',
              ]
            ]
          );
        }catch(RequestException $e){
          var_dump($e->getResponse()->getBody()->getContent());
        }
        $json = $response->getBody()->getContents();
        $array_result = json_decode($json,true);

        $service = ($array_result["rajaongkir"]["results"]["0"]["costs"]);
        
        return view("checkout.index",compact("service",'countries','user_login','courier'));

    }
    
    public function submitcheckout(Request $request){
       $this->validate($request,[
           'billing_name'=>'required',
           'billing_address'=>'required',
           'billing_city'=>'required',
           'billing_state'=>'required',
           'billing_pincode'=>'required',
           'billing_mobile'=>'required',
           'shipping_name'=>'required',
           'shipping_address'=>'required',
           'shipping_city'=>'required',
           'shipping_state'=>'required',
           'shipping_pincode'=>'required',
           'shipping_mobile'=>'required',
       ]);
        $input_data=$request->all();
       $count_shippingaddress=DB::table('delivery_address')->where('users_id',Auth::id())->count();
       if($count_shippingaddress==1){
           DB::table('delivery_address')->where('users_id',Auth::id())->update(['name'=>$input_data['shipping_name'],
               'address'=>$input_data['shipping_address'],
               'city'=>$input_data['shipping_city'],
               'state'=>$input_data['shipping_state'],
               'country'=>$input_data['shipping_country'],
               'pincode'=>$input_data['shipping_pincode'],
               'mobile'=>$input_data['shipping_mobile']]);
       }else{
            DB::table('delivery_address')->insert(['users_id'=>Auth::id(),
                'users_email'=>Session::get('frontSession'),
                'name'=>$input_data['shipping_name'],
                'address'=>$input_data['shipping_address'],
                'city'=>$input_data['shipping_city'],
                'state'=>$input_data['shipping_state'],
                'country'=>$input_data['shipping_country'],
                'pincode'=>$input_data['shipping_pincode'],
                'mobile'=>$input_data['shipping_mobile'],]);
       }
        DB::table('users')->where('id',Auth::id())->update(['name'=>$input_data['billing_name'],
            'address'=>$input_data['billing_address'],
            'city'=>$input_data['billing_city'],
            'state'=>$input_data['billing_state'],
            'country'=>$input_data['billing_country'],
            'pincode'=>$input_data['billing_pincode'],
            'mobile'=>$input_data['billing_mobile']]);
       return redirect('/order-review');

    }
}
