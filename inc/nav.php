<?php 
include 'admin/koneksi.php';

$querySetting = mysqli_query($koneksi, "SELECT * FROM general_setting ORDER BY id DESC");
$rowSetting   = mysqli_fetch_assoc($querySetting);
?>

<nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
    <a href="index.html" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
        <img width="70" src="admin/upload/<?php echo $rowSetting['logo'] ?>" alt="">
    </a>
    <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto p-4 p-lg-0">
            <a href="index.php" class="nav-item nav-link">Home</a>
            <a href="about.php" class="nav-item nav-link">About</a>
            <a href="courses.html" class="nav-item nav-link">Courses</a>
            <a href="contact.php" class="nav-item nav-link">Contact</a>
        </div>
        <a href="" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Join Now<i
                class="fa fa-arrow-right ms-3"></i></a>
    </div>
</nav>