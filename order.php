<?php
	include 'includes/session.php';

  $name = $_POST['inputName'];
  $contact_info = $_POST['inputNumber'];
  $address = $_POST['inputAddress'];
  $payment_method = $_POST['inputPaymentMethod'];
  if (!$_POST['inputCourier']) {
    $courier = $_POST['inputCourier'];
  }
  $fee = $_POST['fee'];

  $conn = $pdo->open();

  $stmt = $conn->prepare("SELECT product_id FROM cart WHERE user_id=:id");
  $stmt->execute(['id'=>$_SESSION['user']]);
  $prod_id = $stmt->fetchAll();

  foreach ($prod_id as $val) {
    foreach ($val as $id) {
      echo $id;
      echo "<br>";
      // try {
      //   $stmt = $conn->prepare("INSERT INTO users (email, password, firstname, lastname, activate_code, status, created_on) VALUES (:email, :password, :firstname, :lastname, :code, :status, :now)");
      //   $stmt->execute(['email'=>$email, 'password'=>$password, 'firstname'=>$firstname, 'lastname'=>$lastname, 'code'=>$code, 'status'=>1, 'now'=>$now]);
      //   $userid = $conn->lastInsertId();

      //   try {
      //     $_SESSION['success'] = 'Account created.';
      //     header('location: login.php');
      //   }
      //   catch (Exception $e) {
      //     $_SESSION['error'] = 'Error creating account';
      //     header('location: signup.php');
      //   }
      // }
      // catch(PDOException $e){
      //   $_SESSION['error'] = $e->getMessage();
      //   header('location: register.php');
      // }
    }
  }
  

  // try {
  //   $stmt = $conn->prepare("INSERT INTO users (email, password, firstname, lastname, activate_code, status, created_on) VALUES (:email, :password, :firstname, :lastname, :code, :status, :now)");
  //   $stmt->execute(['email'=>$email, 'password'=>$password, 'firstname'=>$firstname, 'lastname'=>$lastname, 'code'=>$code, 'status'=>1, 'now'=>$now]);
  //   $userid = $conn->lastInsertId();

  //   try {
  //     $_SESSION['success'] = 'Account created.';
  //     header('location: login.php');
  //   }
  //   catch (Exception $e) {
  //     $_SESSION['error'] = 'Error creating account';
  //     header('location: signup.php');
  //   }
  // }
  // catch(PDOException $e){
  //   $_SESSION['error'] = $e->getMessage();
  //   header('location: register.php');
  // }

  $pdo->close();
?>