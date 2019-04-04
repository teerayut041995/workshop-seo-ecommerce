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

    @foreach($samsung_main as $main)
    <div class="carousel-item">
      <div class="view">
        <img class="d-block w-100 max-h" src="{{url('images/product' , $main->product_image)}}" alt="{{$main->product_name}}">
        <div class="mask rgba-black-light"></div>
      </div>
      <div class="carousel-caption left-middle">
        <span class="badge badge-danger">new</span>
        <h3 class="h3-responsive font-weight-bold font-Montserrat animated fadeInLeft">{{$main->product_name}}</h3>
        <p class="d-none d-sm-none d-md-block animated fadeInRight">{{$main->short_description}}</p>
         <a href="{{url('product',$main->product_slug)}}" class="btn btn-danger d-none d-sm-none d-md-block">Shop now <i class="fas fa-arrow-right ml-2"></i></a>
      </div>
    </div>
    @endforeach
    
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
        @foreach($new_products as $new)
          <div class="col-lg-4 col-md-6 col-sm-12">
          <!-- Card -->
            <div class="card">
                <!-- Card image -->
                <div class="view overlay zoom">
                    <img class="card-img-top" src="{{url('images/product' , $new->product_image)}}" alt="{{$new->product_name}}">
                    <div class="mask flex-center waves-effect waves-light">
                    <a href="#"><p class="white-text">View more</p></a>
                    </div>
                </div>

                <!-- Card content -->
                <div class="card-body">

                <!-- Title -->
                <h4 class="card-title"><a>{{$new->product_name}}</a></h4>
                <!-- Text -->
                <p class="card-text">{{$new->short_description}}</p>
                <!-- Button -->
                <h4>ราคา <span class="text-danger font-weight-bolder font-Montserrat">45,500</span> บาท</h4>
                <a href="{{url('product',$new->product_slug)}}" class="btn btn-elegant ml-0">Shop now</a>
                </div>
            </div>
        <!-- Card -->
        <p><br></p>
          </div>

        @endforeach
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
            <img src="images/S10_plus.png" class="img-fluid mx-auto d-block " alt="{{$samsung_most_expensive->product_name}}">
            </div>
            <div class="col-md-6 py-2 wow fadeInRight">
                <h3 class="h3-responesive white-text fonr-weight-bold text-uppercase">{{$samsung_most_expensive->product_name}}</h3>
                <small class="white-text">แบรนด์ : <a href="#" class="badge badge-primary">{{$samsung_most_expensive->category->category_name}}</a></small>
                <br>
                <hr class="white-line d-inline-flex">
                <p class="white-text">{{$samsung_most_expensive->short_description}}</p>

                <h2 class="text-primary font-weight-bolder font-Montserrat">฿ {{$samsung_most_expensive->product_price}}</h4>

                <a href="{{url('product',$new->product_slug)}}" class="btn btn-light ml-0">Shop now <i class="fas fa-arrow-circle-right move-in-right"></i></a>
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
        @foreach($samsung_store as $samsung)
          <div class="col-lg-4 col-md-6 col-sm-12">

          <!-- Card -->
            <div class="card">

                <!-- Card image -->
                <div class="view overlay zoom">
                    <img class="card-img-top" src="{{url('images/product' , $samsung->product_image)}}" alt="{{$samsung->produc_name}}">
                    <div class="mask flex-center waves-effect waves-light">
                    <a href="#"><p class="white-text">View more</p></a>
                    </div>
                </div>

                <!-- Card content -->
                <div class="card-body">

                <!-- Title -->
                <h4 class="card-title"><a>{{$samsung->produc_name}}</a></h4>
                <!-- Text -->
                <p class="card-text">{{$samsung->short_description}}</p>
                <!-- Button -->
                <h4>ราคา <span class="text-primary font-weight-bolder font-Montserrat">{{$samsung->product_price}}</span> บาท</h4>
                <a href="{{url('product',$samsung->product_slug)}}" class="btn btn-primary ml-0">Shop now</a>

                </div>

            </div>
        <!-- Card -->
          </div>
        @endforeach
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
            <h3 class="h3-responesive white-text fonr-weight-bold text-uppercase">{{$iphone_most_expensive->product_name}}</h3>
            <small class="white-text">แบรนด์ : <a href="#" class="badge badge-primary">{{$iphone_most_expensive->category->category_name}}</a></small>
            <br>
            <hr class="white-line d-inline-flex">
            <p class="white-text">{{$iphone_most_expensive->short_description}}</p>

            <h2 class="text-primary font-weight-bolder font-Montserrat">฿ {{$iphone_most_expensive->product_price}}</h4>

            <a  href="{{url('product',$samsung->product_slug)}}" class="btn btn-light ml-0">Shop now <i class="fas fa-arrow-circle-right move-in-right"></i></a>
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
          @foreach($iphone_store as $ipone)
          <div class="col-lg-4 col-md-6 col-sm-12">

          <!-- Card -->
            <div class="card">

                <!-- Card image -->
                <div class="view overlay zoom">
                    <img class="card-img-top" src="{{url('images/product' , $ipone->product_image)}}" alt="{{$ipone->produc_name}}">
                    <div class="mask flex-center waves-effect waves-light">
                    <a href="#"><p class="white-text">View more</p></a>
                    </div>
                </div>

                <!-- Card content -->
                <div class="card-body">

                <!-- Title -->
                <h4 class="card-title"><a>{{$ipone->produc_name}}</a></h4>
                <!-- Text -->
                <p class="card-text">{{$ipone->short_description}}</p>
                <!-- Button -->
                <h4>ราคา <span class="text-primary font-weight-bolder font-Montserrat">{{$ipone->product_price}}</span> บาท</h4>
                <a href="{{url('product',$ipone->product_slug)}}" class="btn btn-primary ml-0">Shop now</a>

                </div>

            </div>
        <!-- Card -->
          </div>
        @endforeach
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
            <h3 class="h3-responesive white-text fonr-weight-bold text-uppercase">{{$huawei_most_expensive->product_name}}</h3>
            <small class="white-text">แบรนด์ : <a href="#" class="badge badge-primary">{{$huawei_most_expensive->category->category_name}}</a></small>
            <br>
            <hr class="white-line d-inline-flex">
            <p class="white-text">{{$huawei_most_expensive->short_description}}</p>

            <h2 class="text-primary font-weight-bolder font-Montserrat">฿ {{$huawei_most_expensive->product_price}}</h4>

            <a  href="{{url('product',$samsung->product_slug)}}" class="btn btn-light ml-0">Shop now <i class="fas fa-arrow-circle-right move-in-right"></i></a>
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
         @foreach($huawei_store as $huawei)
          <div class="col-lg-4 col-md-6 col-sm-12">

          <!-- Card -->
            <div class="card">

                <!-- Card image -->
                <div class="view overlay zoom">
                    <img class="card-img-top" src="{{url('images/product' , $huawei->product_image)}}" alt="{{$huawei->produc_name}}">
                    <div class="mask flex-center waves-effect waves-light">
                    <a href="#"><p class="white-text">View more</p></a>
                    </div>
                </div>

                <!-- Card content -->
                <div class="card-body">

                <!-- Title -->
                <h4 class="card-title"><a>{{$huawei->produc_name}}</a></h4>
                <!-- Text -->
                <p class="card-text">{{$huawei->short_description}}</p>
                <!-- Button -->
                <h4>ราคา <span class="text-primary font-weight-bolder font-Montserrat">{{$huawei->product_price}}</span> บาท</h4>
                <a href="{{url('product',$ipone->product_slug)}}" class="btn btn-primary ml-0">Shop now</a>

                </div>

            </div>
        <!-- Card -->
          </div>
        @endforeach
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
        @foreach($products as $product)
          <div class="col-lg-4 col-md-6 col-sm-12">

          <!-- Card -->
            <div class="card">

                <!-- Card image -->
                <div class="view overlay zoom">
                    <img class="card-img-top" src="{{url('images/product' , $product->product_image)}}" alt="{{$product->produc_name}}">
                    <div class="mask flex-center waves-effect waves-light">
                    <a href="#"><p class="white-text">View more</p></a>
                    </div>
                </div>

                <!-- Card content -->
                <div class="card-body">

                <!-- Title -->
                <h4 class="card-title"><a>{{$product->produc_name}}</a></h4>
                <!-- Text -->
                <p class="card-text">{{$product->short_description}}</p>
                <!-- Button -->
                <h4>ราคา <span class="text-primary font-weight-bolder font-Montserrat">{{$product->product_price}}</span> บาท</h4>
                <a href="{{url('product',$product->product_slug)}}" class="btn btn-primary ml-0">Shop now</a>

                </div>

            </div>
        <!-- Card -->
          <p><br></p>
          </div>
        @endforeach
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
