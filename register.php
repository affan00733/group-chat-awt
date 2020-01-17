<!--
//login.php
!-->

<?php


if(isset($_POST['login'])){

    $db = mysqli_connect("localhost","root","","chat");

    
    $username = $_POST['username'];
    $password = $_POST['password'];

    $ph= password_hash($password, PASSWORD_DEFAULT);


    $sql = "INSERT INTO login (username,password) VALUES ('$username','$ph')";

    mysqli_query($db,$sql);
   
    // header("refresh:2; url=principal_desk.php")
    header("location:index.php");



  }

?>


<html>  
    <head>  
        <title>Chat Application </title>  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    </head>  
    <body>  
        <div class="container">
   <br />
   
   <h3 align="center">Chat Application </a></h3><br />
   <br />
   <div class="panel panel-default">
      <div class="panel-heading">Chat Application Register</div>
    <div class="panel-body">
     <form method="post" action="register.php" enctype="multipart/form-data">
      <p class="text-danger"></p>
      <div class="form-group">
       <label>Enter Username</label>
       <input type="text" name="username" class="form-control" Required />
      </div>
      <div class="form-group">
       <label>Enter Password</label>
       <input type="password" name="password" class="form-control" Required />
      </div>
      <div class="form-group">
       <input type="submit" name="login" class="btn btn-info" value="Register" />
      </div>
     </form>
    </div>
   </div>
  </div>
    </body>  
</html>
