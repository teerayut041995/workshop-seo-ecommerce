@extends('layouts.general_master')

@section('title')
    ชื่อสินค้า
@endsection

@section('style')
<style>
    .navbar {
    background-color: #1d1919;
    }
</style>
@endsection

@section('intro')
<div class="container mt-5 pt-5">
    <div class="row">
        <div class="col-md-12">
        <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">หน้าหลัก</a></li>
            <li class="breadcrumb-item active">ชื่อสินค้า</li>
        </ol>
        </nav>
        </div>
    </div>
</div>
@endsection

@section('content')
<div class="container mt-2 mb-4">
    <div class="col-md-12">
        <div class="row mb-5">
            <div class="col-md-1 align-self-start">
                <div class="view overlay zoom z-depth-2 mb-3">
                    <img src="images/product-images/0f1e922a0e73310979d5c7beff61100d.jpg" class="img-fluid z-depth-2 rounded" alt="Sample image with waves effect.">
                    <a>
                        <div class="mask waves-effect rgba-white-slight"></div>
                    </a>
                </div>
                <div class="view overlay zoom z-depth-2 mb-3">
                    <img src="images/product-images/1f26ab5039557b526801029ccf03ea45.jpg" class="img-fluid z-depth-2 rounded" alt="Sample image with waves effect.">
                    <a>
                        <div class="mask waves-effect rgba-white-slight"></div>
                    </a>
                </div>
                <div class="view overlay zoom z-depth-2 mb-3">
                    <img src="images/product-images/33c43ae6f13fc7feebe797b25d515f7b.jpg" class="img-fluid rounded" alt="Sample image with waves effect.">
                    <a>
                        <div class="mask waves-effect rgba-white-slight"></div>
                    </a>
                </div>

            </div>
            <div class="col-md-5 animated fadeInLeft">
                <div class="view overlay zoom">
                    <img src="images/product-images/525fd97da0e0b5dd36c90cd3b3a0b010.jpg" class="img-fluid rounded" alt="Sample image with waves effect.">
                    <a>
                        <div class="mask waves-effect rgba-white-slight"></div>
                    </a>
                </div>
            </div>

            <div class="col-md-6 animated fadeInRight">
                <span><small class="text-muted">แบรนด์</small> <span class="badge badge-dark">Samsung</span> </span>
                <h3 class="h3-responesive mt-2">ชื่อสินค้า</h3>
                <p class="lead">รายละเอียดย่อ</p>
                <h4 class="text-muted py-3">ราคา <span class="text-danger font-weight-bold">45,500</span> บาท</h4>
                <p class="text-right mb-0"><small><i class="far fa-eye"></i> การเข้าดู 12 คน</small></p>
                <button type="button" class="btn btn-dark btn-block align-self-end"><i class="fas fa-cart-arrow-down mr-2"></i> หยิบใส่ตะกร้า</button>
            </div>

        </div>

        <div class="row">
        <div class="col-md-12 mt-2">
            <h4 class="้h4-responesive"><u>รายละเอียดทั้งหมด</u></h4>
            <p class="lead">รายละเอียด</p>
        </div>
        </div>

        <hr>

        <div class="row">
            <div class="col-md-12">
            <h4 class="้h4-responesive border-dark pl-2">สินค้าที่เกี่ยวข้อง</h4>
            </div>
        </div>

    </div>
</div>
@endsection

@section('footer')
@endsection

@section('script')
@endsection
