<?php 
session_start();
if (!isset($_SESSION['user_email'])) {
  header('Location: ../main/auth/login.php');
  exit;
}

$open = false ; 

if (isset($_GET['logout'])) {
  $open = true;
}

if (isset($_POST['logout'])) {
  session_unset();
    session_destroy();
    // header('Location: login.php');
  header("location: http://localhost/main/auth/login.php");

    exit;
}


?>


<!DOCTYPE html>
<html lang="en">
<head>
  <style>
    body {
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f8f9fa; 
    }

    .nav {
      background-color: #6be8d1; 
      padding: 10px 0; 
      list-style: none;
      text-align: center;
    }

    .nav-item {
      display: inline-block;
      margin-right: 20px;
    }

    .nav-link {
      text-decoration: none;
      color: #ffffff; 
      font-size: 18px;
      transition: color 0.3s; 
    }

    .nav-link:hover {
      color: #0056b3; 
    }
  </style>
</head>
<body>
  <ul class="nav justify-content-center">
    <li class="nav-item">
      <a class="nav-link" href="addBook.php">Ajout livre</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="addUser.php">Ajout Utilisateur</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="users.php">Utilisateurs</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="index.php">Livres</a>
    </li>
    <!-- <li class="nav-item">
    <a class="nav-link"  href="#">Logout</a>
    </li> -->

      <li class="nav-item">
        <form method="GET">
          <button  class="nav-link" name="logout" type="submit" style="border: none; background-color:#6be8d1" >Logout</button>
        </form>
      </li>

      
  </ul> 


  <?php 
      if($open){
        echo('
        <div id="blocLayer">
        <form method="POST">
            <div class="layer">
                <p class="d-flex justify-content-center mt-3">Voulez vous logout cette référence ?</p>
                <div class="d-flex justify-content-center mb-3">
                  <button name="logout" type="submit" class="btn btn-outline-success d-flex justify-content-center mr-4">Oui</button>
                  <button name="non" type="submit" class="btn btn-outline-danger d-flex justify-content-center ml-4">Non</button>
                </div>
            </div>
        </form>
    </div>
        ');
      }
  ?>

  


</body>
</html>
