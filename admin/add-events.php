<?php
error_reporting(0);
include 'conn.php';
include 'auth.php';
$a=7;
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php include"title.php";  ?>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
 <!-- Navbar -->
   <?php include"topbar.php"; ?>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <?php include"sidebar.php"; ?>
<?php

// date_default_timezone_set('Asia/Kolkata');
// $today = date("D d M Y");
$edit = $_GET['edit'];
 $resultt = mysqli_query($con,"SELECT * FROM events where id=".$edit."");
 $roww = mysqli_fetch_array($resultt);


if(isset($_POST['publise'])){

$title1 = $_POST['title'];
$today = $_POST['date'];
$title = str_replace("'","\'", $title1);
$short1 = $_POST['short'];
$short = str_replace("'","\'", $short1);
$category = $_POST['category'];
$descrip1 = $_POST['descrip'];
$descrip = str_replace("'","\'", $descrip1);
$url = $_POST['url'];

if($_FILES['lis_img']['name']!=''){
$lis_img = rand().$_FILES['lis_img']['name'];
}
else{
	$lis_img = $roww["img"];
}

$tempname = $_FILES['lis_img']['tmp_name'];
$folder = "images/events/".$lis_img;
$valid_ext = array('png','jpeg','jpg');
// file extension
$file_extension = pathinfo($folder, PATHINFO_EXTENSION);
$file_extension = strtolower($file_extension);
// Check extension
if(in_array($file_extension,$valid_ext)){
// Compress Image
compressImage($tempname,$folder,60);
}
if($edit==''){
$insertdata = mysqli_query($con,"INSERT INTO events(title,category,short,descrip,img,url,date,status)VALUES('$title','$category','$short','$descrip','$lis_img','$url','$today','0')");
echo "<script>alert('Posted Successfully');</script>
	<script>window.location.href = 'add-events.php'</script>";

}
else{
$insertdata = mysqli_query($con,"UPDATE events SET title='$title',category='$category',short='$short',descrip='$descrip',img='$lis_img',url='$url',date='$today' where id=".$edit."");
echo "<script>alert('Updated Successfully');</script>
	<script>window.location.href = 'add-events.php'</script>";
}
}

// Compress image
function compressImage($source, $destination, $quality) {

  $info = getimagesize($source);

  if ($info['mime'] == 'image/jpeg') 
    $image = imagecreatefromjpeg($source);

  elseif ($info['mime'] == 'image/gif') 
    $image = imagecreatefromgif($source);

  elseif ($info['mime'] == 'image/png') 
    $image = imagecreatefrompng($source);

  imagejpeg($image, $destination, $quality);
 

}

?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Add Events</h1>
          </div>

        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-8">
		<form action="" method="post" enctype="multipart/form-data">
          <div class="card card-outline card-info">
            
			 
			<div class="card-header">
             <div class="form-group">
                  <label>Enter Title</label>
                 <input name="title" value="<?php echo $roww["title"]; ?>" type="text" class="form-control" placeholder="Enter ...">
                </div>
            </div>
            	<div class="card-header">
             <div class="form-group">
                  <label>Select Category</label>
                  <select name="category" class="form-control">
                      <option>Select...</option>
                      <?php 
                      $location = mysqli_query($con,"SELECT * FROM category"); 
                      while ($location_ft = mysqli_fetch_array($location)) {   
                      ?>
                      <option <?php if($roww["category"]==$location_ft["cat_name"]){ echo 'selected'; } ?> value="<?php echo $location_ft["cat_name"]; ?>"><?php echo $location_ft["cat_name"]; ?></option>
                      <?php
                		}
                	   ?>
                  </select>
                </div>
            </div>
      <div class="card-body pad">
			<label>Short Description</label>
              <div class="mb-3">
                <textarea name="short" placeholder="Short Description" style="width: 100%;" rows="5" cols="23"><?php echo $roww["short"]; ?></textarea>
              </div>
            </div>
			<div class="card-body pad">
			<label>Enter Description (Don't Insert Images Directly In Text Area Use URL only)</label>
              <div class="mb-3">
                <textarea name="descrip" class="textarea" placeholder="Place some text here"
                          style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo $roww["descrip"]; ?></textarea>
              </div>
            </div>

            <div class="card-header">
          <div class="form-group">
                  <label>Enter Date (Sat 25 Mar 2023)</label>
                 <input name="date" value="<?php echo $roww["date"]; ?>" type="text" class="form-control" placeholder="Wed 01 Mar 2023">
                </div>
            </div>
      </div>
			<div class="card-header">
			<div class="form-group">
                    <label for="exampleInputFile">Select Img<span style="color:red;">(only compresed)</span></label>
					<p style="color:red;">img landscape only (if image not showing on website try using different resolution)</p>
                        <input name="lis_img" type="file" required>
                     <?php echo $roww["img"]; ?>
                  </div>
                
			</div>
      

      
			<div class="card-header">
             <div class="form-group">
					<div class="row">
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
				<button type="submit" name="publise" class="btn btn-primary btn-lg">Publish Post</button>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
          </div>
		  </form>
        </div>
        <!-- /.col-->
      </div>
      <!-- ./row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
   <?php include"footer.php"; ?>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<script>
  $(function () {
    // Summernote
    $('.textarea').summernote()
  })
</script>
</body>
</html>