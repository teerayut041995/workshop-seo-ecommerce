@extends('layouts.master')

@section('title')
    รายละเอียดสินค้า
@endsection

@section('content')
    <div class="container">
    	<p><br></p>
    	<div class="row">
    		<div class="col-md-6">
          <!-- Card -->
          <div class="card">

            <!-- Card image -->
            <img class="card-img-top" src="{{url('images/product' , $product->product_image)}}" alt="Card image cap">

          </div>
          <!-- Card -->
    		</div>
        <div class="col-md-6">
          <!-- Card -->
          <div class="card">
            <div class="card-body">
              <!-- Title -->
              <h4 class="card-title"><a>{{$product->product_name}}</a></h4>
              <!-- Text -->
              <p class="card-text">{{$product->short_description}}</p>
              <p><br></p>
              <h4 class="card-title text-danger">ราคา {{$product->product_price}} บาท</h4>
              <p><br></p>
              <!-- Button -->
              <p class="card-text">จำนวนสินค้าคงเหลือ {{$product->product_quantity}}</p>
              <p class="card-text">เพิ่มเมื่อวันที่ {{$product->created_at}}</p>
              <p class="card-text">อับเดตล่าสุด {{$product->updated_at}}</p>
              <p class="card-text">การเข้าดู </p>
              <form action="" method="post" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label>เพิ่มรูปภาพ</label>
                    <input type="file" class="form-control" name="image_name" accept="image/*" required>
                </div>
                <button type="submit" class="btn btn-primary">บันทึก</button>
              </form>
            </div>

          </div>
          <!-- Card -->
        </div>
    	</div>
      <p><br></p>
      <div class="row">
        <div class="col-md-12">
          <!-- Card -->
          <div class="card">
            <div class="card-body">
            
              <p class="card-text">{!!$product->long_description!!}</p>
          
            </div>

          </div>
          <!-- Card -->
        </div>
      </div>
    </div>
@endsection