<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>@yield('title')</title>
    <link href="{{asset('template/MDBootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="{{asset('template/MDBootstrap/css/mdb.min.css')}}" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="{{asset('template/MDBootstrap/css/style.css')}}" rel="stylesheet">
    <!-- Font Awesome -->
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
    <!-- <link rel="stylesheet" href="{{asset('template/plugins/font-awesome/css/font-awesome.min.css')}}"> -->
    <!-- Ionicons -->
    <link rel="stylesheet" href="{{asset('template/plugins/Ionicons/css/ionicons.min.css')}}">
    <!-- DataTables -->
    <link rel="stylesheet" href="{{asset('template/MDBootstrap/css/addons/datatables.min.css')}}">
    <link rel="stylesheet" href="{{asset('template/MDBootstrap/css/addons/datatables-select.min.css')}}">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="{{asset('template/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css')}}">
    @yield('style')
  </head>
  <body>

    <header>
      <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container">
          <a class="navbar-brand" href="#">ระบบหลังร้าน</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item">
                <a class="nav-link" href="/">หน้าแรก</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{url('/categories')}}">หมวดหมู่สินค้า</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                  aria-expanded="false">สินค้า</a>
                <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="{{url('/products')}}">ข้อมูลสินค้าทั้งหมด</a>
                  <a class="dropdown-item" href="{{url('/products/create')}}">เพิ่มสินค้า</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
    @yield('content')
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script type="text/javascript" src="{{asset('template/MDBootstrap/js/jquery-3.3.1.min.js')}}"></script>

    <!-- <script src="{{('template/plugins/jquery/dist/jquery.min.js')}}"></script> -->
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="{{asset('template/MDBootstrap/js/popper.min.js')}}"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="{{asset('template/MDBootstrap/js/bootstrap.min.js')}}"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="{{asset('template/MDBootstrap/js/mdb.min.js')}}"></script>
    <!-- DataTables -->
    <script type="text/javascript" src="{{asset('template/MDBootstrap/js/addons/datatables.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('template/MDBootstrap/js/addons/datatables-select.min.js')}}"></script>
    <!-- CK Editor -->
    <script src="{{asset('template/plugins/ckeditor/ckeditor.js')}}"></script>
    <!-- <script src="{{asset('template/plugins/datatables.net/js/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('template/plugins/datatables.net-bs/js/dataTables.bootstrap.min.js')}}"></script> -->
    @yield('script')
  </body>
</html>