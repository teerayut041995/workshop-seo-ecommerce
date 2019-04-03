@extends('layouts.master')

@section('title')
    สิ้นค้าทั้งหมด
@endsection

@section('content')
    <div class="container">
    	<p><br></p>
    	<div class="row">
    		<div class="col-md-12">
          @if (session('status'))
                <div class="alert alert-info">
                    {{ session('status') }}
                </div>
          @endif
    			<div class="table-responsive">
                    <table id="load-datatable" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                              <th>ลำดับ</th>
                              <th>ชื่อสินค้า</th>
                              <th>หมวดหมู่สินค้า</th>
                              <th>ราคา</th>
                              <th>จำนวน</th>
                              <th style="width: 15%;">รายละเอียด</th>
                              <th style="width: 10%;">แก้ไข</th>
                              <th style="width: 10%;">ลบ</th>
                            </tr>
                        </thead>
                        <tbody>
                       		<?php $i = 1; ?>
                            @foreach($products as $product)
                            <tr>
                              <td>{{$i++}}</td>
                              <td>
                                <a href="{{url('/products', $product->id)}}">
                                  {{$product->product_name}}
                                </a>
                              </td>
                              <td>
                                {{$product->category->category_name}}
                              </td>
                              <td>
                                {{$product->product_price}}
                              </td>
                              <td>
                                {{$product->product_quantity}}
                              </td>
                              <td>
                                <a href="{{url('/products', $product->id)}}" class="btn btn-primary btn-sm btn-block">
                                  ดูรายละเอียด
                                </a>
                              </td>
                              <td>
                                  <a href="{{url('/products/'.$product->id.'/edit')}}" class="btn btn-success btn-sm btn-block">แก้ไข</a>
                              </td>
                              <td>
                                  <form class="delete" action="{{ url('/products', $product->id) }}" method="POST">
                                        @method('DELETE')
                                        @csrf
                                        <button class="btn btn-danger btn-sm btn-block">ลบ</button>
                                  </form>
                              </td>
                            </tr>
                            @endforeach
                        </tbody>
                	</table>
                </div>
    		</div>
    	</div>
    </div>
@endsection

@section('script')
<script>
    $(document).ready(function(){
        $('#load-datatable').DataTable();
        $(document).on('submit' , '.delete' , function(event){
            if (!confirm("คุณต้องการลบข้อมูลใช่หรือไม่")) {
               return false; 
            }
        });
    });
</script>
@endsection