<!doctype html>
<html lang="en" class="full-height">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>@yield('title')</title>
    <link rel="shortcut icon" href="images/Asset.png" />

    <link href="{{asset('template/MDBootstrap/css/bootstrap.css')}}" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="{{asset('template/MDBootstrap/css/mdb.css')}}" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="{{asset('css/style.css')}}" rel="stylesheet">
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
    <!-- <link rel="stylesheet" href="{{asset('template/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css')}}"> -->
    <style>

    </style>
    @yield('style')
  </head>
  <body>
      <!--Main Navigation-->
        <header>
            <nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
            <div class="container">
            <a class="navbar-brand" href="/">
            <img src="images/Asset.png" height="30" class="d-inline-block align-top"
      alt="mdb logo">
      <strong>THIS IS PHONE</strong></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/">หน้าแรก <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#samsung-view">Samsung</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#iphone-view">Iphone</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#huawei-view">Huawei</a>
                    </li>
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="#">Oppo</a>
                    </li> -->
                    <li class="nav-item">
                        <a class="nav-link" href="#other-view">อื่นๆ</a>
                    </li>
                </ul>
                <ul class="navbar-nav nav-flex-icons">
                    <li class="nav-item">
                    <a class="nav-link"><span><i class="fas fa-shopping-cart fa-lg"></i>
                    <span class="badge badge-pill badge-danger align-top">9</span></span>
                    <span class="sr-only">number product</span>
                </a>
                    </li>
                </ul>
            </div>
            </div>
            </nav>
            @yield('intro')
        </header>
    @yield('content')

    <!-- Footer -->
    <footer class="page-footer font-small unique-color-dark mt-5">

    <!-- Footer Elements -->
    <div class="container">

    <!-- Grid row-->
    <div class="row">

        <!-- Grid column -->
        <div class="col-md-12 py-5">
        <div class="mb-5 flex-center">

            <!-- Facebook -->
            <a class="fb-ic">
            <i class="fab fa-facebook-f fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
            </a>
            <!-- Twitter -->
            <a class="tw-ic">
            <i class="fab fa-twitter fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
            </a>
            <!-- Google +-->
            <a class="gplus-ic">
            <i class="fab fa-google-plus-g fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
            </a>
            <!--Linkedin -->
            <a class="li-ic">
            <i class="fab fa-linkedin-in fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
            </a>
            <!--Instagram-->
            <a class="ins-ic">
            <i class="fab fa-instagram fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
            </a>
            <!--Pinterest-->
            <a class="pin-ic">
            <i class="fab fa-pinterest fa-lg white-text fa-2x"> </i>
            </a>
        </div>
        </div>
        <!-- Grid column -->

    </div>
    <!-- Grid row-->

    </div>
    <!-- Footer Elements -->

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">© 2018 Copyright:
    <a href="https://mdbootstrap.com/education/bootstrap/"> MDBootstrap.com</a>
    </div>
    <!-- Copyright -->

    </footer>
    <!-- Footer -->
    @yield('footer')
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
    <script>
    new WOW().init();
    </script>
    @yield('script')
  </body>
</html>
