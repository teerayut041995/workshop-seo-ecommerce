@extends('layouts.master')

@section('title')
    แก้ไขข้อมูลสินค้า
@endsection

@section('content')
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <p><br></p>
          <form method="post" action="{{url('/admin/products' , $product->id)}}" enctype="multipart/form-data">
            @method('PATCH')
            @csrf
          <div class="form-group">
              <label>ชื่อสินค้า</label>
              <input type="text" class="form-control" name="product_name" value="{{$product->product_name}}" placeholder="ชื่อสินค้า" required>
          </div>
          <div class="form-group">
              <label>หมวดหมู่สินค้า</label>
              <select name="category_id" class="form-control" required>
                @foreach($categories as $category)
                <option value="{{$category->id}}"
                <?php
                if($category->id == $product->category_id){
                  echo 'selected';
                }
                ?>
                >{{$category->category_name}}</option>
                @endforeach
              </select>
          </div>
          <div class="form-group col-md-6">
            <img class="card-img-top" src="{{url('images/product' , $product->product_image)}}" alt="{{$product->product_name}}">
          </div>
          <div class="form-group">
              <label>อัพเดตรูปภาพสินค้า</label>
              <input type="file" class="form-control" name="product_image" accept="image/*">
              <input type="hidden" class="form-control" name="product_image_old" value="{{$product->product_image}}">
          </div>
          <div class="form-group">
              <label>ราคา</label>
              <input type="text" class="form-control" name="product_price" value="{{$product->product_price}}" placeholder="ราคาสินค้าย่อ" required>
          </div>
          <div class="form-group">
              <label>รายละเอียดสินค้าย่อ</label>
              <textarea class="form-control" name="short_description" placeholder="รายละเอียดสินค้าย่อ" rows="5" required>{{$product->short_description}}</textarea>
          </div>
          <div class="form-group">
              <label>รายละเอียดสินค้า</label>
              <textarea id="editor1" name="long_description" rows="10" cols="80" required>{{$product->long_description}}
              </textarea>
          </div>
          <div class="form-group">
              <label>จำนวนสินค้า</label>
              <input type="number" class="form-control" name="product_quantity" placeholder="จำนวนสินค้า" value="{{$product->product_quantity}}" required>
          </div>
          <button type="submit" class="btn btn-primary">บันทึก</button>
        </form>
        </div>
      </div>
    </div>
@endsection

@section('script')
<script>
  $(function () {
    CKEDITOR.replace('editor1');
  });
</script>
@endsection