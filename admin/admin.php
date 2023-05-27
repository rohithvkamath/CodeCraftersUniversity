<!DOCTYPE html>
<html>
<head>
	<title>Admin Dashboard</title>
	<link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Copy-of-Labs.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.6.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
</head>
<?php
session_start();
	require "php/config.php";
	require_once "php/functions.php";
	$user = new login_registration_class();
	$admin_id = $_SESSION['admin_id'];
	$admin_name = $_SESSION['admin_name'];
	if(!$user->get_admin_session()){
		header('Location: index.php');
		exit();
	}
?>	
<?php 
$pageTitle = "Admin";
include "php/headertop_admin.php";
?>
<body>

    <section class="u-align-center u-black u-clearfix u-section-1" id="sec-67d6">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-align-center u-container-style u-grey-75 u-group u-opacity u-opacity-75 u-radius-50 u-shape-round u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h2 class="u-text u-text-default u-text-1">Student Details</h2>
            <div class="u-opacity u-opacity-45 u-palette-2-dark-1 u-preserve-proportions u-shape u-shape-circle u-shape-1"  data-href="admin_all_student.php"></div>
            <h4 class="u-text u-text-default u-text-2" ><a href="admin_all_student.php" style="text-decoration:none;color:white;">View All Students</a></h4>
            <div class="u-opacity u-opacity-45 u-palette-2-dark-1 u-preserve-proportions u-shape u-shape-circle u-shape-2" data-href="st_result.php"></div>
            <h4 class="u-text u-text-default u-text-3"><a href="st_result.php" style="text-decoration:none;color:white;">Student Result</a></h4>
            <div class="u-opacity u-opacity-45 u-palette-2-dark-1 u-preserve-proportions u-shape u-shape-circle u-shape-3" data-href="class_att.php"></div>
            <h4 class="u-text u-text-default u-text-4"><a href="class_att.php" style="text-decoration:none;color:white;">View Attendace</a></h4>
          </div>
        </div>
        <div class="u-align-center u-container-style u-grey-75 u-group u-opacity u-opacity-75 u-radius-50 u-shape-round u-group-2">
          <div class="u-container-layout u-container-layout-2">
            <h2 class="u-text u-text-default u-text-5">Staff Details</h2>
            <div class="u-opacity u-opacity-45 u-palette-4-base u-preserve-proportions u-shape u-shape-circle u-shape-4" data-href="admin_all_faculty.php"></div>
            <a href="admin_all_faculty.php" style="text-decoration:none;color:white;"><h4 class="u-text u-text-default u-text-6">Faculty Details</h4></a>
            <div class="u-opacity u-opacity-45 u-palette-4-base u-preserve-proportions u-shape u-shape-circle u-shape-5" data-href="google.com"></div>
            <h4 class="u-text u-text-default u-text-7">Information</h4>
            <div class="u-opacity u-opacity-45 u-palette-4-base u-preserve-proportions u-shape u-shape-circle u-shape-6" data-href="google.com"></div>
            <h4 class="u-text u-text-default u-text-8">Search Faculty</h4>
          </div>
        </div>
      </div>
    </section>
<?php include "php/footerbottom.php";?>
</body>
</html>
