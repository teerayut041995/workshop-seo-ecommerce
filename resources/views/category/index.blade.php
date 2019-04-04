@extends('layouts.master')

@section('title')
    หมวดหมู่สินค้า
@endsection

@section('content')
    <div class="container">
    	<div class="row">
    		<div class="col-md-12">
    			<p><br></p>
    			<form method="post" action="{{url('/admin/categories')}}">
    				@csrf
					<div class="form-group">
					   	<label>ชื่อหมวดหมู่</label>
					    <input type="text" class="form-control" name="category_name" placeholder="หมวดหมู่สินค้า" required>
					    <small class="form-text text-muted">กรอกชื่อหมวดหมู่สินค้า</small>
					</div>
					<button type="submit" class="btn btn-primary">บันทึก</button>
				</form>
    		</div>
    	</div>
    	<hr>
    	<div class="row">
    		<div class="col-md-12">
    			<div class="table-responsive">
                    <table id="load-datatable" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                              <th>ลำดับ</th>
                              <th>หมวดหมู่สินค้า</th>
                              <th style="width: 15%;">แก้ไข</th>
                              <th style="width: 10%;">ลบ</th>
                            </tr>
                        </thead>
                        <tbody>
                       		<?php $i = 1; ?>
                            @foreach($categories as $category)
                            <tr>
                              <td>{{$i++}}</td>
                              <td>
                                {{$category->category_name}}
                              </td>
                              <td>
                                  <a href="{{url('/admin/categories/'.$category->id.'/edit')}}" class="btn btn-success btn-sm btn-block">แก้ไข</a>
                              </td>
                              <td>
                                  <form class="delete" action="{{ url('/admin/categories', $category->id) }}" method="POST">
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