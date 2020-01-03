<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>차트</title>

  <!-- Custom fonts for this template-->
  <link href="/resources/mypage/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="/resources/mypage/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <link href="/resources/mypage/css/sb-admin.css" rel="stylesheet">

  <!-- Bootstrap core JavaScript-->
  <script src="/resources/mypage/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/mypage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resources/mypage/vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="/resources/mypage/vendor/chart.js/Chart.min.js"></script>
  <script src="/resources/mypage/js/sb-admin.min.js"></script>
  <script src="/resources/mypage/js/demo/chart-area-demo.js"></script>
  <script src="/resources/mypage/js/demo/chart-bar-demo.js"></script>
  <script src="/resources/mypage/js/demo/chart-pie-demo.js"></script>

</head>

<body id="page-top">

  <%@ include file="/pageframe/mypageHeader.jsp"%>
	
  <div id="wrapper">
  
	<%@ include file="/pageframe/lefter.jsp"%>
	
    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">차트</a>
          </li>
        </ol>

        <!-- Area Chart Example-->
        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-chart-area"></i>
            Area Chart Example</div>
          <div class="card-body">
            <canvas id="myAreaChart" width="100%" height="30"></canvas>
          </div>
          <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
        </div>

        <div class="row">
          <div class="col-lg-8">
            <div class="card mb-3">
              <div class="card-header">
                <i class="fas fa-chart-bar"></i>
                Bar Chart Example</div>
              <div class="card-body">
                <canvas id="myBarChart" width="100%" height="50"></canvas>
              </div>
              <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="card mb-3">
              <div class="card-header">
                <i class="fas fa-chart-pie"></i>
                Pie Chart Example</div>
              <div class="card-body">
                <canvas id="myPieChart" width="100%" height="100"></canvas>
              </div>
              <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
            </div>
          </div>
        </div>

        <p class="small text-center text-muted my-5">
          <em>More chart examples coming soon...</em>
        </p>

      </div>
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->
<!--       <footer class="sticky-footer"> -->
<!--         <div class="container my-auto"> -->
<!--           <div class="copyright text-center my-auto"> -->
<!--             <span>Copyright Â© Your Website 2019</span> -->
<!--           </div> -->
<!--         </div> -->
<!--       </footer> -->

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>


</body>

</html>
