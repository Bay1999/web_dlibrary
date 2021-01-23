<!--
=========================================================
Material Dashboard - v2.1.2
=========================================================

Product Page: https://www.creative-tim.com/product/material-dashboard
Copyright 2020 Creative Tim (https://www.creative-tim.com)
Coded by Creative Tim

=========================================================
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. -->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="{{ asset('admin/assets/img/apple-icon.png') }}">
  <link rel="icon" type="image/png" href="{{ asset('admin/assets/img/favicon.png') }}">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Dlibrary
  </title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="{{ asset('admin/assets/css/material-dashboard.css?v=2.1.2') }}" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="{{ asset('admin/assets/demo/demo.css') }}" rel="stylesheet" />
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="{{ asset('admin/assets/img/sidebar-1.jpg') }}">

      <div class="logo"><a href="http://www.creative-tim.com" class="simple-text logo-normal">
          Dlibrary
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item active">
            <a class="nav-link" href="/dashboard">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="{{route('buku.index')}}">
              <i class="material-icons">list</i>
              <p>Daftar Buku</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="{{route('buku.create')}}">
              <i class="material-icons">library_add</i>
              <p>Tambah Buku</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="{{route('kategori.index')}}">
              <i class="material-icons">category</i>
              <p>Kategori</p>
            </a>
          <li class="nav-item active-pro ">
            <a class="nav-link" href="./upgrade.html">
              <i class="material-icons">person</i>
              <p>Log Out</p>
            </a>
          </li>
        </ul>
      </div>
    </div>

    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="javascript:;">Dashboard</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            <ul class="navbar-nav">
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-info card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">content_copy</i>
                  </div>
                  <p class="card-category">Jumlah Buku</p>
                  <h3 class="card-title">{{ $countData['bukuCount'] }}
                    <small>Buku</small>
                  </h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">update</i> Terbaru
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-success card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">category</i>
                  </div>
                  <p class="card-category">Jumlah Kategori</p>
                  <h3 class="card-title">{{ $countData['kategoriCount'] }}
                    <small>Kategori</small>
                  </h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">update</i> Terbaru

                    <!-- <i class="material-icons">date_range</i> Last 24 Hours -->
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-warning card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">chrome_reader_mode</i>
                  </div>
                  <p class="card-category">Semua Buku Dibaca</p>
                  <h3 class="card-title">{{ $countData['readBulanCount'] }} x</h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <!-- <i class="material-icons">local_offer</i> Tracked from Github -->
                    <i class="material-icons">date_range</i> Bulan ini

                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-danger card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">comment</i>
                  </div>
                  <p class="card-category">Jumlah Ulasan</p>
                  <h3 class="card-title">{{ $countData['reviewBulanCount'] }}</h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <!-- <i class="material-icons">update</i> Just Updated -->
                    <i class="material-icons">date_range</i> Bulan ini

                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <!-- chart 1 -->
            <div class="col-md-4">
              <div class="card card-chart">
                <!-- <div class="card-header card-header-info">
                  <div class="ct-chart" id="dailySalesChart"></div>
                </div> -->
                <div class="mx-3">
                  <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Judul</th>
                        <th scope="col">Dibaca</th>
                      </tr>
                    </thead>
                    <tbody>
                      @forelse ($countData['mostRead'] as $key => $read)
                      <tr>

                        <td>
                          <p>{{ $key + 1}}</p>
                        </td>
                        <td>
                          <a href="{{route('buku.edit', $read['buku_id'])}}">
                            <p>{{ $read['buku'] }}</p>
                          </a>
                        </td>
                        <td class="text-center">
                          <p>{{ $read['jumlah'] }} x</p>
                        </td>

                      </tr>
                      @empty
                      <div class="alert alert-danger">
                        Data buku belum Tersedia.
                      </div>
                      @endforelse
                    </tbody>
                  </table>
                </div>
                <div class="card-body">
                  <h4 class="card-title">Buku terlaris</h4>
                  <p class="card-category">5 Buku dengan pembaca terbanyak</p>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i> Terbaru
                  </div>
                </div>
              </div>
            </div>

            <!-- chart 2 -->
            <div class="col-md-3">
              <div class="card card-chart">
                <div class="card-header card-header-success text-center">
                  <!-- <div class="ct-chart" id="websiteViewsChart"></div> -->
                  <img src="{{ $countData['bukuTer']->cover}}" alt="Cover" class="rounded" style="max-width: 70%;max-height:70%">
                </div>
                <div class="card-body">
                  <a href="{{route('buku.edit', $countData['bukuTer']->id)}}">
                    <h4 class="card-title">{{ $countData['bukuTer']->nama }}</h4>
                  </a>
                  <p class="card-category">Buku paling banyak pembacanya</p>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i> Terbaru
                  </div>
                </div>
              </div>
            </div>

            <!-- chart 3 -->
            <div class="col-md-5">
              <div class="card card-chart">
                <!-- <div class="card-header card-header-warning"> -->
                <div class="card-header card-header-light1">
                  <canvas id="completedTasksChart"></canvas>
                </div>
                <div class="card-body">
                  <h4 class="card-title">Grafik</h4>
                  <p class="card-category">Semua buku dibaca</p>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i> 5 bulan terakhir
                  </div>
                </div>
              </div>
            </div>
          </div>

          <footer class="footer">
            <div class="container-fluid">
              <nav class="float-left">
                <ul>
                  <li>

                  </li>
                  <li>

                  </li>
                  <li>

                  </li>
                  <li>

                  </li>
                </ul>
              </nav>
              <div class="copyright float-right">
                &copy;
                <script>
                  document.write(new Date().getFullYear())
                </script>, Designed by <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a> | Modifed by Bayu Agung Prasetyo
              </div>
            </div>
          </footer>
        </div>
      </div>
      <!--   Core JS Files   -->
      <script src="{{ asset('admin/assets/js/core/jquery.min.js') }}"></script>
      <script src="{{ asset('admin/assets/js/core/popper.min.js') }}"></script>
      <script src="{{ asset('admin/assets/js/core/bootstrap-material-design.min.js') }}"></script>
      <script src="{{ asset('admin/assets/js/plugins/perfect-scrollbar.jquery.min.js') }}"></script>
      <!-- Plugin for the momentJs  -->
      <script src="{{ asset('admin/assets/js/plugins/moment.min.js') }}"></script>
      <!--  Plugin for Sweet Alert -->
      <script src="{{ asset('admin/assets/js/plugins/sweetalert2.js') }}"></script>
      <!-- Forms Validations Plugin -->
      <script src="{{ asset('admin/assets/js/plugins/jquery.validate.min.js') }}"></script>
      <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
      <script src="{{ asset('admin/assets/js/plugins/jquery.bootstrap-wizard.js') }}"></script>
      <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
      <script src="{{ asset('admin/assets/js/plugins/bootstrap-selectpicker.js') }}"></script>
      <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
      <script src="{{ asset('admin/assets/js/plugins/bootstrap-datetimepicker.min.js') }}"></script>
      <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
      <script src="{{ asset('admin/assets/js/plugins/jquery.dataTables.min.js') }}"></script>
      <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
      <script src="{{ asset('admin/assets/js/plugins/bootstrap-tagsinput.js') }}"></script>
      <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
      <script src="{{ asset('admin/assets/js/plugins/jasny-bootstrap.min.js') }}"></script>
      <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
      <script src="{{ asset('admin/assets/js/plugins/fullcalendar.min.js') }}"></script>
      <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
      <script src="{{ asset('admin/assets/js/plugins/jquery-jvectormap.js') }}"></script>
      <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
      <script src="{{ asset('admin/assets/js/plugins/nouislider.min.js') }}"></script>
      <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
      <!-- Library for adding dinamically elements -->
      <script src="{{ asset('admin/assets/js/plugins/arrive.min.js') }}"></script>
      <!--  Google Maps Plugin    -->
      <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
      <!-- Chartist JS -->
      <script src="{{ asset('admin/assets/js/plugins/chartist.min.js') }}"></script>
      <!--  Notifications Plugin    -->
      <script src="{{ asset('admin/assets/js/plugins/bootstrap-notify.js') }}"></script>
      <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
      <script src="{{ asset('admin/assets/js/material-dashboard.js?v=2.1.2') }}" type="text/javascript"></script>
      <!-- Material Dashboard DEMO methods, don't include it in your project! -->
      <script src="{{ asset('admin/assets/demo/demo.js') }}"></script>
      <script>
        $(document).ready(function() {
          $().ready(function() {
            $sidebar = $('.sidebar');

            $sidebar_img_container = $sidebar.find('.sidebar-background');

            $full_page = $('.full-page');

            $sidebar_responsive = $('body > .navbar-collapse');

            window_width = $(window).width();

            fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

            if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
              if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
                $('.fixed-plugin .dropdown').addClass('open');
              }

            }

            $('.fixed-plugin a').click(function(event) {
              // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
              if ($(this).hasClass('switch-trigger')) {
                if (event.stopPropagation) {
                  event.stopPropagation();
                } else if (window.event) {
                  window.event.cancelBubble = true;
                }
              }
            });

            $('.fixed-plugin .active-color span').click(function() {
              $full_page_background = $('.full-page-background');

              $(this).siblings().removeClass('active');
              $(this).addClass('active');

              var new_color = $(this).data('color');

              if ($sidebar.length != 0) {
                $sidebar.attr('data-color', new_color);
              }

              if ($full_page.length != 0) {
                $full_page.attr('filter-color', new_color);
              }

              if ($sidebar_responsive.length != 0) {
                $sidebar_responsive.attr('data-color', new_color);
              }
            });

            $('.fixed-plugin .background-color .badge').click(function() {
              $(this).siblings().removeClass('active');
              $(this).addClass('active');

              var new_color = $(this).data('background-color');

              if ($sidebar.length != 0) {
                $sidebar.attr('data-background-color', new_color);
              }
            });

            $('.fixed-plugin .img-holder').click(function() {
              $full_page_background = $('.full-page-background');

              $(this).parent('li').siblings().removeClass('active');
              $(this).parent('li').addClass('active');


              var new_image = $(this).find("img").attr('src');

              if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                $sidebar_img_container.fadeOut('fast', function() {
                  $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                  $sidebar_img_container.fadeIn('fast');
                });
              }

              if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                $full_page_background.fadeOut('fast', function() {
                  $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                  $full_page_background.fadeIn('fast');
                });
              }

              if ($('.switch-sidebar-image input:checked').length == 0) {
                var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
                var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              }

              if ($sidebar_responsive.length != 0) {
                $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
              }
            });

            $('.switch-sidebar-image input').change(function() {
              $full_page_background = $('.full-page-background');

              $input = $(this);

              if ($input.is(':checked')) {
                if ($sidebar_img_container.length != 0) {
                  $sidebar_img_container.fadeIn('fast');
                  $sidebar.attr('data-image', '#');
                }

                if ($full_page_background.length != 0) {
                  $full_page_background.fadeIn('fast');
                  $full_page.attr('data-image', '#');
                }

                background_image = true;
              } else {
                if ($sidebar_img_container.length != 0) {
                  $sidebar.removeAttr('data-image');
                  $sidebar_img_container.fadeOut('fast');
                }

                if ($full_page_background.length != 0) {
                  $full_page.removeAttr('data-image', '#');
                  $full_page_background.fadeOut('fast');
                }

                background_image = false;
              }
            });

            $('.switch-sidebar-mini input').change(function() {
              $body = $('body');

              $input = $(this);

              if (md.misc.sidebar_mini_active == true) {
                $('body').removeClass('sidebar-mini');
                md.misc.sidebar_mini_active = false;

                $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

              } else {

                $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

                setTimeout(function() {
                  $('body').addClass('sidebar-mini');

                  md.misc.sidebar_mini_active = true;
                }, 300);
              }

              // we simulate the window Resize so the charts will get updated in realtime.
              var simulateWindowResize = setInterval(function() {
                window.dispatchEvent(new Event('resize'));
              }, 180);

              // we stop the simulation of Window Resize after the animations are completed
              setTimeout(function() {
                clearInterval(simulateWindowResize);
              }, 1000);

            });
          });
        });
      </script>
      <!-- <script>
        $(document).ready(function() {
          // Javascript method's body can be found in assets/js/demos.js
          md.initDashboardPageCharts();

        });
      </script> -->
      <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

      <script>
        var ctx = document.getElementById('completedTasksChart').getContext('2d');
        var chart = new Chart(ctx, {
          // The type of chart we want to create
          type: 'line',
          scaleFontColor: "white",

          // The data for our dataset
          data: {
            // labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
            labels: ['<?php echo $chart['month'][4] ?>', '<?php echo $chart['month'][3] ?>', '<?php echo $chart['month'][2] ?>', '<?php echo $chart['month'][1] ?>', '<?php echo $chart['month'][0] ?>'],
            datasets: [{
              label: 'Pembaca',
              // backgroundColor: 'rgb(255, 255, 255)',
              // borderColor: 'rgb(255, 255, 255)',
              backgroundColor: 'rgb(255, 99, 132, 0.3)',
              borderColor: 'rgb(255, 99, 132)',
              data: [<?php echo $chart['data'][4] ?>, <?php echo $chart['data'][3] ?>, <?php echo $chart['data'][2] ?>, <?php echo $chart['data'][1] ?>, <?php echo $chart['data'][0] ?>]
            }]
          },

          // Configuration options go here
          options: {}
        });
      </script>
</body>

</html>