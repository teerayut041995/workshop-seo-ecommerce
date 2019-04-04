<?php

namespace App\Http\Controllers;

use App\Product;
use App\Category;
use App\ProductImage;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::all();
        return view('product.index' , compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        return view('product.create' , compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if ($request->file('product_image') != '') {
            $file_image = $request->file('product_image');
            $image_name = md5(rand()*time()) . '.' . $file_image->getClientOriginalExtension();
            $file_image->move(public_path('images/product'), $image_name);
        } else {
            $image_name = "";
        }
        $product = new Product([
            'product_name' => $request->product_name,
            'product_image' => $image_name,
            'short_description' => $request->short_description,
            'long_description' => $request->long_description,
            'product_quantity' => $request->product_quantity,
            'product_price' => $request->product_price,
            'category_id' => $request->category_id,
        ]);
        $product->save();
        return redirect('/admin/products')->with('status', 'บันทึกข้อมูลสินค้าเรียบร้อยแล้ว');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        return view('product.show' , compact('product'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        $categories = Category::all();
        return view('product.edit' , compact('product','categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        if ($request->file('product_image') == '') {
            $image_name = $request->get('product_image_old');
        } else {
            $image = $request->file('product_image');
            $image_name = md5(rand()*time()) . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('images/product'), $image_name);
            if ($request->get('product_image_old') != '') {
                @unlink(public_path().'/images/product/'.$request->get('product_image_old'));
            }
        }
        $product->product_name = $request->product_name;
        $product->product_image = $image_name;
        $product->short_description = $request->short_description;
        $product->long_description = $request->long_description;
        $product->product_price = $request->product_price;
        $product->product_quantity = $request->product_quantity;
        $product->category_id = $request->category_id;
        $product->save();
        return redirect('/admin/products')->with('status', 'บันทึกข้อมูลสินค้าเรียบร้อยแล้ว');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
    
        foreach ($product->images as $image) {
            if ($image->image_name != '') {
                unlink(public_path().'/images/product-images/'.$image->image_name);
            } 
        }
        $product->delete();
        return redirect('/admin/products/')->with('status', 'ลบข้อมูลสินค้าเรียบร้อยแล้ว');
                
    }

    public function insert_image(Request $request, $id)
    {
        if ($request->file('image_name') != '') {
            $file_image = $request->file('image_name');
            $image_name = md5(rand()*time()) . '.' . $file_image->getClientOriginalExtension();
            $file_image->move(public_path('images/product-images'), $image_name);
        } else {
            $image_name = "";
        }
        $product = new ProductImage([
            'image_name' => $image_name,
            'product_id' => $id,
        ]);
        $product->save();
        return redirect('/admin/products/'.$id)->with('status', 'เพิ่มรูปภาพสินค้าเรียบร้อยแล้ว');
    }

    public function delete_image($id)
    {
        $image = ProductImage::find($id);
        $product_id = $image->product_id;
        if ($image->image_name != '') {
            @unlink(public_path().'/images/product-images/'.$image->image_name);
        }
        $image->delete();
        return redirect('/admin/products/'.$product_id)->with('status', 'ลบรูปภาพสินค้าเรียบร้อยแล้ว');
    }
}
