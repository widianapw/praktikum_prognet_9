<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Product_cat;
use App\Product_img;
class IndexController extends Controller
{
    public function index(){
        $products=Product::select('products.id', 'product_name','price','image_name','product_category_details.category_id')
        	->join('product_images','products.id','=','product_images.product_id')
        	->join('product_category_details','products.id','=','product_category_details.product_id')
        	->groupBy('products.id')
        	->get();
        return view('frontEnd.index',compact('products'));
    } 

    public function listByCat($id){

        $list_product=Product::select('products.id', 'product_name','price','image_name','product_category_details.category_id')
        	->join('product_images','products.id','=','product_images.product_id')
        	->join('product_category_details','products.id','=','product_category_details.product_id')
        	->groupBy('products.id')
        	->get();

        $byCate=Product_cat::select('category_name')->where('id',$id)->first();
        return view('frontEnd.products',compact('list_product','byCate'));
    }

    public function shop(){
        $products=Products_model::all();
        $byCate="";
        return view('frontEnd.products',compact('products','byCate'));
    }

    public function detialpro($id){
        $detail_product=Product::select('products.id', 'product_name','description','stock','price','image_name','product_category_details.category_id')
        	->join('product_images','products.id','=','product_images.product_id')
        	->join('product_category_details','products.id','=','product_category_details.product_id')
        	->groupBy('products.id')->where('products.id',$id)
        	->get()->first();
        $imagesGalleries=Product_img::where('product_id',$id)->get();
        
        // $relateProducts=Products_model::where([['id','!=',$id],['categories_id',$detail_product->categories_id]])->get();
        return view('frontEnd.product_details',compact('detail_product','imagesGalleries'));
    }
    public function getAttrs(Request $request){
        $all_attrs=$request->all();
        //print_r($all_attrs);die();
        $attr=explode('-',$all_attrs['size']);
        //echo $attr[0].' <=> '. $attr[1];
        $result_select=ProductAtrr_model::where(['products_id'=>$attr[0],'size'=>$attr[1]])->first();
        echo $result_select->price."#".$result_select->stock;
    }
}
