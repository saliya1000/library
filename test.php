<?php
if(isset($_POST['submit']))
{
   $name = $_FILES['file']['name'];
   //the directory to upload to
   $targetDir = "uploads/";
   //the file being upload
   $targetFile = $targetDir.basename($_FILES['file']['name']);
   echo "<script>alert('$targetFile');</script>";
   //select the file type - file extension
   $fileType = strtolower(pathinfo($targetFile,PATHINFO_EXTENSION));
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>HTML Form</title>
  </head>
  <body>
    <h1>Form</h1>
    <form method="POST" enctype="multipart/form-data" >
      <label  class="form-label">Name</label>
      <input type="text" class="form-control" id="exampleInputEmail1" name="name" required > <br><br>
      file : <input type="file" name="file"><br><br>
      <br/>
      <input type="submit" value="submit"  name="submit">
    </form>
  </body>
</html>

