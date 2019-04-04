@extends('layouts.general_master')

@section('title')
    หน้าแรก
@endsection

@section('intro')
<div class="intro-2">
  <!--Carousel Wrapper-->
<div id="carousel-example-2" class="carousel slide carousel-fade" data-ride="carousel">
  <!--Indicators-->
  <!-- <ol class="carousel-indicators">
    <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-2" data-slide-to="1"></li>
    <li data-target="#carousel-example-2" data-slide-to="2"></li>
  </ol> -->
  <!--/.Indicators-->
  <!--Slides-->
  <div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <div class="view">
        <img class="d-block w-100 max-h" src="images/view-images/samsung.jpg" alt="First slide">
        <div class="mask rgba-black-light"></div>
      </div>
      <div class="carousel-caption left-middle">
        <span class="badge badge-danger">new</span>
        <h3 class="h3-responsive font-weight-bold font-Montserrat animated fadeInLeft">SAMSUNG GALEXY S10 </h3>
        <p class="d-none d-sm-none d-md-block animated fadeInRight">ประสบการณ์จากการเป็นผู้บุกเบิกเทคโนโลยีสมาร์ทโฟนที่ยาวนานถึง 10 ปี
         ก่อให้เกิด Galaxy S10e S10 และ S10+ ซึ่งถือเป็น Next Generation ของนวัตกรรมด้านสมาร์ทโฟน</p>
         <button type="button" class="btn btn-danger d-none d-sm-none d-md-block">Shop now <i class="fas fa-arrow-right ml-2"></i></button>
      </div>
    </div>
    <div class="carousel-item">
      <!--Mask color-->
      <div class="view">
        <img class="d-block w-100 max-h" src="images/view-images/oppo.jpg" alt="Second slide">
        <div class="mask rgba-black-light"></div>
      </div>
      <div class="carousel-caption left-bottom">
      <span class="badge badge-danger">new</span>
        <h3 class="h3-responsive font-weight-bold font-Montserrat animated fadeInLeft">OPPO FIND X</h3>
        <p class="d-none d-sm-none d-md-block animated fadeInRight">OPPO Find X สมาร์ทโฟน Panoramic Design
            รุ่นแรกของโลก ห่อหุ้มด้วยความงดงามแห่งสุนทรียภาพ
            สู่ผลผลิตแห่งนวัตกรรมล้ำสมัย</p>
            <button type="button" class="btn btn-danger d-none d-sm-none d-md-block">Show now <i class="fas fa-arrow-right ml-2"></i></button>
      </div>
    </div>
    <div class="carousel-item">
      <!--Mask color-->
      <div class="view">
        <img class="d-block w-100 max-h" src="images/view-images/iphone.png" alt="Third slide">
        <div class="mask rgba-black-light"></div>
      </div>
      <div class="carousel-caption right-top">
        <span class="badge badge-primary">coming soon</span>
        <h3 class="h3-responsive font-weight-bold font-Montserrat animated fadeInRight">IPHONE XS, XR</h3>
        <p class="d-none d-sm-none d-md-block animated fadeInLeft"> พบกับ Super Retina สองขนาด โดยหนึ่งในนั้นคือจอภาพที่ใหญ่
            ที่สุดเท่าที่เคยมีมาบน iPhone แล้วยังมี Face ID ที่เร็วยิ่งขึ้น
            ชิพที่ทั้งฉลาดและทรงพลังที่สุดในสมาร์ทโฟน
            และระบบกล้องคู่สุดล้ำที่มาพร้อมการควบคุมระยะชัดลึก</p>
        <button type="button" class="btn btn-light float-right d-none d-sm-none d-md-block" disabled><i class="fas fa-arrow-left mr-2"></i> Shop now</button>
      </div>
    </div>
  </div>
  <!--/.Slides-->
  <!--Controls-->
  <a class="carousel-control-prev" href="#carousel-example-2" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carousel-example-2" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  <!--/.Controls-->
</div>
<!--/.Carousel Wrapper-->
</div>
@endsection

@section('content')
<!--Main Layout-->
<main class="py-5">

  <div class="container">
    <div class="row wow fadeIn">
      <div class="col-md-12">
      <h3 class="h3-reponesive font-weight-bolder text-center mb-5"><i class="fas fa-fire"></i> มาแล้ววันนี้ </h3>
      <div class="row">
          <div class="col-lg-4 col-md-6 col-sm-12">

          <!-- Card -->
            <div class="card">

                <!-- Card image -->
                <div class="view overlay zoom">
                    <img class="card-img-top" src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg" alt="Card image cap">
                    <div class="mask flex-center waves-effect waves-light">
                    <a href="#"><p class="white-text">View more</p></a>
                    </div>
                </div>

                <!-- Card content -->
                <div class="card-body">

                <!-- Title -->
                <h4 class="card-title"><a>ชื่อรุ่นโทรศัพท์</a></h4>
                <!-- Text -->
                <p class="card-text">รายละเอียดย่อ</p>
                <!-- Button -->
                <h4>ราคา <span class="text-danger font-weight-bolder font-Montserrat">45,500</span> บาท</h4>
                <button type="button" class="btn btn-elegant ml-0">Shop now</button>

                </div>

            </div>
        <!-- Card -->

          </div>
      </div>

      </div>
    </div>
  </div>

</main>
<!--Main Layout-->

<!--Main Layout samsung-->
<main class="py-5" id="samsung-view">
<!-- <div class="jumbotron" style="background-image: url(images/view-images/samsung.jpg);"> -->
<div class="jumbotron img-samsung">

    <div class="container">
        <div class="row py-5 img-gray">
            <div class="col-md-6 wow fadeInLeft">
            <img src="images/S10_plus.png" class="img-fluid mx-auto d-block " alt="Responsive image">
            </div>
            <div class="col-md-6 py-2 wow fadeInRight">
                <h3 class="h3-responesive white-text fonr-weight-bold text-uppercase">samsung galaxy S10</h3>
                <small class="white-text">แบรนด์ : <a href="#" class="badge badge-primary">samsung</a></small>
                <br>
                <hr class="white-line d-inline-flex">
                <p class="white-text">รายละเอียดย่อ</p>

                <h2 class="text-primary font-weight-bolder font-Montserrat">฿ 45,500</h4>

                <button type="button" class="btn btn-light ml-0">Shop now <i class="fas fa-arrow-circle-right move-in-right"></i></button>
            </div>
        </div>
    </div>
</div>
</main>

<main class="pb-5">

  <div class="container">
    <div class="row wow fadeIn">
      <div class="col-md-12">
      <h4 class="h4-reponesive font-weight-bolder text-uppercase font-Montserrat border-blue mb-5 pl-2"> samsung store </h4>
      <div class="row">
          <div class="col-lg-4 col-md-6 col-sm-12">

          <!-- Card -->
            <div class="card">

                <!-- Card image -->
                <div class="view overlay zoom">
                    <img class="card-img-top" src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg" alt="Card image cap">
                    <div class="mask flex-center waves-effect waves-light">
                    <a href="#"><p class="white-text">View more</p></a>
                    </div>
                </div>

                <!-- Card content -->
                <div class="card-body">

                <!-- Title -->
                <h4 class="card-title"><a>ชื่อรุ่นโทรศัพท์</a></h4>
                <!-- Text -->
                <p class="card-text">รายละเอียดย่อ</p>
                <!-- Button -->
                <h4>ราคา <span class="text-primary font-weight-bolder font-Montserrat">45,500</span> บาท</h4>
                <button type="button" class="btn btn-primary ml-0">Shop now</button>

                </div>

            </div>
        <!-- Card -->

          </div>
      </div>

      </div>
    </div>
  </div>

</main>

<!--Main Layout samsung-->

<!--Main Layout iphone-->
<main class="py-5" id="iphone-view">
<div class="jumbotron img-iphone">

<div class="container">
    <div class="row py-5 img-gray">
        <div class="col-md-6 wow fadeInLeft">
        <img src="images/iphone_xs.png" class="img-fluid mx-auto d-block " alt="Responsive image">
        </div>
        <div class="col-md-6 py-2 wow fadeInRight">
            <h3 class="h3-responesive white-text fonr-weight-bold text-uppercase">iPhone XS</h3>
            <small class="white-text">แบรนด์ : <a href="#" class="badge badge-primary">samsung</a></small>
            <br>
            <hr class="white-line d-inline-flex">
            <p class="white-text">รายละเอียดย่อ</p>

            <h2 class="text-primary font-weight-bolder font-Montserrat">฿ 45,500</h4>

            <button type="button" class="btn btn-light ml-0">Shop now <i class="fas fa-arrow-circle-right move-in-right"></i></button>
        </div>
    </div>
</div>
</div>
</main>

<main class="pb-5">

  <div class="container">
    <div class="row wow fadeIn">
      <div class="col-md-12">
      <h4 class="h4-reponesive font-weight-bolder text-uppercase font-Montserrat border-yellow mb-5 pl-2"> iphone store </h4>
      <div class="row">
          <div class="col-lg-4 col-md-6 col-sm-12">

          <!-- Card -->
            <div class="card">

                <!-- Card image -->
                <div class="view overlay zoom">
                    <img class="card-img-top" src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg" alt="Card image cap">
                    <div class="mask flex-center waves-effect waves-light">
                    <a href="#"><p class="white-text">View more</p></a>
                    </div>
                </div>

                <!-- Card content -->
                <div class="card-body">

                <!-- Title -->
                <h4 class="card-title"><a>ชื่อรุ่นโทรศัพท์</a></h4>
                <!-- Text -->
                <p class="card-text">รายละเอียดย่อ</p>
                <!-- Button -->
                <h4>ราคา <span class="text-warning font-weight-bolder font-Montserrat">45,500</span> บาท</h4>
                <button type="button" class="btn btn-amber ml-0">Shop now</button>

                </div>

            </div>
        <!-- Card -->

          </div>
      </div>

      </div>
    </div>
  </div>

</main>


<!--Main Layout iphone-->

<!--Main Layout huawei-->
<main class="py-5" id="huawei-view">
<div class="jumbotron img-huawei">

<div class="container">
    <div class="row py-5 img-gray">
        <div class="col-md-6 wow fadeInLeft">
        <img src="images/hua-wei_p30.png" class="img-fluid mx-auto d-block " alt="Responsive image">
        </div>
        <div class="col-md-6 py-2 wow fadeInRight">
            <h3 class="h3-responesive white-text fonr-weight-bold text-uppercase">Huawei P30</h3>
            <small class="white-text">แบรนด์ : <a href="#" class="badge badge-primary">samsung</a></small>
            <br>
            <hr class="white-line d-inline-flex">
            <p class="white-text">รายละเอียดย่อ</p>

            <h2 class="text-primary font-weight-bolder font-Montserrat">฿ 45,500</h4>

            <button type="button" class="btn btn-light ml-0">Shop now <i class="fas fa-arrow-circle-right move-in-right"></i></button>
        </div>
    </div>
</div>
</div>
</main>

<main class="pb-5">

  <div class="container">
    <div class="row wow fadeIn">
      <div class="col-md-12">
      <h4 class="h4-reponesive font-weight-bolder text-uppercase font-Montserrat border-purple mb-5 pl-2"> huawei store </h4>
      <div class="row">
          <div class="col-lg-4 col-md-6 col-sm-12">

          <!-- Card -->
            <div class="card">

                <!-- Card image -->
                <div class="view overlay zoom">
                    <img class="card-img-top" src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg" alt="Card image cap">
                    <div class="mask flex-center waves-effect waves-light">
                    <a href="#"><p class="white-text">View more</p></a>
                    </div>
                </div>

                <!-- Card content -->
                <div class="card-body">

                <!-- Title -->
                <h4 class="card-title"><a>ชื่อรุ่นโทรศัพท์</a></h4>
                <!-- Text -->
                <p class="card-text">รายละเอียดย่อ</p>
                <!-- Button -->
                <h4>ราคา <span class="text-secondary font-weight-bolder font-Montserrat">45,500</span> บาท</h4>
                <button type="button" class="btn btn-purple ml-0">Shop now</button>

                </div>

            </div>
        <!-- Card -->

          </div>
      </div>

      </div>
    </div>
  </div>

</main>

<!--Main Layout huawei-->


<!--Main Layout other-->
<main class="py-5" id="other-view">
<div class="jumbotron" style="background-color: #000;">

<div class="container">
    <div class="col-md-12 text-center wow fadeInUp"><h1 class="h1-responesive white-text">มือถือทั้งหมด</h1></div>
</div>
</div>
</main>

<main class="pb-5">

  <div class="container">
    <div class="row wow fadeIn">
      <div class="col-md-12">
      <div class="row">
          <div class="col-lg-4 col-md-6 col-sm-12">

          <!-- Card -->
            <div class="card">

                <!-- Card image -->
                <div class="view overlay zoom">
                    <img class="card-img-top" src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg" alt="Card image cap">
                    <div class="mask flex-center waves-effect waves-light">
                    <a href="#"><p class="white-text">View more</p></a>
                    </div>
                </div>

                <!-- Card content -->
                <div class="card-body">

                <!-- Title -->
                <h4 class="card-title"><a>ชื่อรุ่นโทรศัพท์</a></h4>
                <!-- Text -->
                <p class="card-text">รายละเอียดย่อ</p>
                <!-- Button -->
                <h4>ราคา <span class="text-danger font-weight-bolder font-Montserrat">45,500</span> บาท</h4>
                <button type="button" class="btn btn-elegant ml-0">Shop now</button>

                </div>

            </div>
        <!-- Card -->

          </div>
      </div>

      </div>
    </div>
  </div>

</main>

<!--Main Layout other-->
@endsection

@section('footer')
@endsection

@section('script')
@endsection
