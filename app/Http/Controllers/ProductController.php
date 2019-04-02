<?php

namespace App\Http\Controllers;
use DB;
use App\Quotation;
use App\Product;
use App\Product_img;
use App\Product_cat;
use App\Product_cat_det;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $index = Product::select('products.id','products.product_name','products.price','description','product_rate','stock','weight','product_images.image_name','product_categories.category_name')
        ->join('product_category_details','products.id','=','product_category_details.product_id')
        ->join('product_images','products.id','=','product_images.product_id')
        ->join('product_categories','product_category_details.category_id','=','product_categories.id')
        ->get();
        return view("/admin/product/index",compact("index"));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $category = Product_cat::get();
        return view("/admin/product/create",compact('category'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $product = new Product;
        $product->product_name= $request->nama_produk;
        $product->price= $request->harga;
        $product->description= $request->deskripsi;
        $product->product_rate= $request->rating;
        $product->stock= $request->stok;
        $product->weight= $request->berat;
        $product->save();
        
        if(is_array($request->kategori)){
            foreach($request->kategori as $kat){
                $cat = new Product_cat_det;
                $cat->product_id = $product->id;
                $cat->category_id = $kat;
                $cat->save();
            }
        }
        
        $this->validate($request, [
            'filename' => 'required',
            'filename.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);      

        if($request->hasfile('filename'))
        {
            foreach($request->file('filename') as $image)
            {
                $name=$image->getClientOriginalName();
                $image->move(public_path().'/images/', $name);  
                $form= new Product_img();   
                $form->product_id = $product->id;
                $form->image_name=$name;  
                $form->save();       
            }
        }
        return redirect('/admin/product');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        $test = Product::find($product)->first();
        return view("/admin/product/edit",compact("test"));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        $product->product_name= $request->nama_produk;
        $product->price= $request->harga;
        $product->description= $request->deskripsi;
        $product->product_rate= $request->rating;
        $product->stock= $request->stok;
        $product->weight= $request->berat;
        $product->save();
        return redirect('/admin/product');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(product $product)
    {
        //
    }
}
