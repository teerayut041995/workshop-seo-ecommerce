@extends('layouts.general_master')

@section('title')
    ตะกร้าสินค้า
@endsection

@section('style')
<style>
    .navbar {
    background-color: #1d1919;
    }
    .crop-img {
        width:8rem;
        height:auto;
    }
</style>
@endsection

@section('intro')
<div class="container mt-5 pt-5">
    <div class="row">
    <div class="col-md-12"><h3 class="้h3-responesive"><i class="fas fa-shopping-cart mr-2"></i> ตะกร้าสินค้าของฉัน</h3></div>
    </div>
    <!-- <hr class="dark-line"> -->
</div>
@endsection

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
        <div class="card animated fadeIn">
        <table class="table">
            <thead>
                <tr>
                <th scope="col" colspan="7">&equiv; สินค้าในตะกร้าทั้งหมด 10 รายการ</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                <th scope="row">1</th>
                <td><img src="images/product-images/0f1e922a0e73310979d5c7beff61100d.jpg" class="crop-img" alt="Responsive image"></td>
                <td><h5>ชื่อสินค้า</h5>
                <span><small class="text-muted">แบรนด์ : </small> apple</span><br/>
                <span><small class="text-muted">จำนวนสินค้า</small> 10 <small class="text-muted">จำนวน</small></span>
                </td>
                <td><h5 class="text-dark font-weight-bolder">45,500</h5></td>
                <td>
                    <div class="def-number-input number-input">
                    <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus"></button>
                    <input class="quantity" min="0" name="quantity" value="1" type="number">
                    <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
                    </div>
                </td>
                <td><h3 class="text-dark text-center font-weight-bolder">45,500.00</h3></td>
                <td><button type="button" class="btn btn-elegant btn-sm px-3"><i class="fas fa-trash-alt" aria-hidden="true"></i></button></td>
                </tr>
                <tr>
                <th scope="row">2</th>
                <td><img src="images/product-images/0f1e922a0e73310979d5c7beff61100d.jpg" class="crop-img" alt="Responsive image"></td>
                <td><h5>ชื่อสินค้า</h5>
                <span><small class="text-muted">แบรนด์ : </small> apple</span><br/>
                <span><small class="text-muted">จำนวนสินค้า</small> 10 <small class="text-muted">จำนวน</small></span>
                </td>
                <td><h5 class="text-dark font-weight-bolder">45,500</h5></td>
                <td>
                    <div class="def-number-input number-input">
                    <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus"></button>
                    <input class="quantity" min="0" name="quantity" value="1" type="number">
                    <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
                    </div>
                </td>
                <td><h3 class="text-dark text-center font-weight-bolder">45,500.00</h3></td>
                <td><button type="button" class="btn btn-elegant btn-sm px-3"><i class="fas fa-trash-alt" aria-hidden="true"></i></button></td>
                </tr>
                <tr>
                <th scope="row" colspan="5"><h5 class="text-right">ยอดรวมทั้งหมด</h5></th>
                <td><h3 class="text-danger text-center font-weight-bold">45,500.00</h3></td>
                <td><h5>บาท</h5></td>
                </tr>
            </tbody>
            </table>

            </div>
        </div>

        <div class="col-md-12 mt-3">
            <div class="row">
                <div class="col-md-4"><button type="button" class="btn btn-outline-elegant"><i class="fas fa-arrow-left pr-2" aria-hidden="true"></i>เลือกสินค้าต่อ</button></div>
                <div class="col-md-2"></div>
                <div class="col-md-6"><button type="button" class="btn btn-danger btn-block btn-lg"><i class="far fa-credit-card pr-2" aria-hidden="true"></i>ชำระสินค้า</button></div>
            </div>

        </div>
    </div>
</div>

@endsection

@section('footer')
@endsection

@section('script')
@endsection
