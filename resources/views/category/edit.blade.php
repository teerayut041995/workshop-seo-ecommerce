@extends('layouts.master')

@section('title')
    แก้ไขข้อมูลหมวดหมู่สินค้า
@endsection

@section('content')
    <div class="container">
    	<div class="row">
    		<div class="col-md-12">
    			<p><br></p>
    			<form method="post" action="{{url('/categories' , $category->id)}}">
            @method('PATCH')
    				@csrf
  					<div class="form-group">
  					   	<label>ชื่อหมวดหมู่</label>
  					    <input type="text" class="form-control" name="category_name" value="{{$category->category_name}}" placeholder="หมวดหมู่สินค้า" required>
  					    <small class="form-text text-muted">กรอกชื่อหมวดหมู่สินค้าที่ต้องการแก้ไข</small>
  					</div>
  					<button type="submit" class="btn btn-primary">บันทึก</button>
  				</form>
    		</div>
    	</div>
    	<hr>
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