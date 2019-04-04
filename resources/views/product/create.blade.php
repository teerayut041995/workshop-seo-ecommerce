@extends('layouts.master')

@section('title')
    เพิ่มสินค้า
@endsection

@section('content')
    <div class="container">
    	<div class="row">
    		<div class="col-md-12">
    			<p><br></p>
    			<form method="post" action="{{url('/admin/products')}}" enctype="multipart/form-data">
    				@csrf
					<div class="form-group">
					   	<label>ชื่อสินค้า</label>
					    <input type="text" class="form-control" name="product_name" placeholder="ชื่อสินค้า" required>
					</div>
          <div class="form-group">
              <label>หมวดหมู่สินค้า</label>
              <select name="category_id" class="form-control" required>
                <option value="">เลือกหมวดหมู่สินค้า</option>
                @foreach($categories as $category)
                <option value="{{$category->id}}">{{$category->category_name}}</option>
                @endforeach
              </select>
          </div>
          <div class="form-group">
              <label>รูปภาพสินค้า</label>
              <input type="file" class="form-control" name="product_image" accept="image/*" required>
          </div>
          <div class="form-group">
              <label>ราคา</label>
              <input type="text" class="form-control" name="product_price" placeholder="ราคาสินค้าย่อ" required>
          </div>
          <div class="form-group">
              <label>รายละเอียดสินค้าย่อ</label>
              <textarea class="form-control" name="short_description" placeholder="รายละเอียดสินค้าย่อ" rows="5" required></textarea>
          </div>
          <div class="form-group">
              <label>รายละเอียดสินค้า</label>
              <textarea id="editor1" name="long_description" rows="10" cols="80" required>
              </textarea>
          </div>
          <div class="form-group">
              <label>จำนวนสินค้า</label>
              <input type="number" class="form-control" name="product_quantity" placeholder="จำนวนสินค้า" required>
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