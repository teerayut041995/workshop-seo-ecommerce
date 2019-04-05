<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class HomeController extends Controller
{
	public function index()
	{

		$samsung_main = Product::where('category_id',7)->orderBy('product_price' , 'DESC')->get();
        $new_products = Product::orderBy('created_at' , 'DESC')->paginate(6);

		$samsung_most_expensive = Product::where('category_id',7)->orderBy('product_price' , 'DESC')->first();
		$samsung_store = Product::where('category_id',7)->limit(3)->get();

		$iphone_most_expensive = Product::where('category_id',5)->orderBy('product_price' , 'DESC')->first();
		$iphone_store = Product::where('category_id',5)->limit(3)->get();

		$huawei_most_expensive = Product::where('category_id',9)->orderBy('product_price' , 'DESC')->first();
		$huawei_store = Product::where('category_id',9)->limit(3)->get();

		$products = Product::all();
		return view('index' , compact('samsung_main','new_products','samsung_most_expensive','samsung_store','iphone_most_expensive','iphone_store' ,'huawei_most_expensive' , 'huawei_store' , 'products'));
	}

	
	public function show($slug)
	{
		$product = Product::where('product_slug',$slug)->first();
		return view('product' , compact('product'));
	}


}
