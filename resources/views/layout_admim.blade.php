<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="d-flex flex-column min-vh-100">

  <!-- HEADER -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Admin Panel</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item"><a class="nav-link" href="#">Thông báo</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Đăng xuất</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- BODY -->
  <div class="container-fluid flex-grow-1">
    <div class="row flex-nowrap">
      
      <!-- SIDEBAR -->
      <div class="col-auto col-md-3 col-xl-2 px-sm-2 bg-dark">
        <div class="d-flex flex-column align-items-sm-start px-3 pt-2 text-white min-vh-100">
          <a href="#" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
            <span class="fs-5">Menu</span>
          </a>
          <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-start mt-3">
            <li class="nav-item"><a href="#" class="nav-link text-white">🏠 Dashboard</a></li>
            <li><a href="#" class="nav-link text-white">📦 Sản phẩm</a></li>
            <li><a href="#" class="nav-link text-white">👥 Người dùng</a></li>
            <li><a href="#" class="nav-link text-white">🧾 Đơn hàng</a></li>
            <li><a href="#" class="nav-link text-white">⚙️ Cài đặt</a></li>
          </ul>
        </div>
      </div>
      <!-- MAIN CONTENT -->
       <!-- FOOTER -->
  <footer class="bg-dark text-light text-center py-2 mt-auto">
    © 2025 - Admin Dashboard | Dùng Bootstrap 5
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>