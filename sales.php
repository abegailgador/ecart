<?php
	include 'includes/session.php';

	if(isset($_GET['pay'])){
		$payid = $_GET['pay'];
		$date = date('Y-m-d');
		$name = $_POST['inputName'];
		$contact_info = $_POST['inputNumber'];
		$address = $_POST['inputAddress'];
		$payment_method = $_POST['inputPaymentMethod'];
		$courier = $_POST['inputCourier'] ? $_POST['inputCourier'] : '';
		$fee = $_POST['fee'];

		$conn = $pdo->open();

		try{
			$stmt = $conn->prepare("INSERT INTO sales (user_id, pay_id, sales_date, payment_method, courier, shipping_fee, delivery_address, contact_number) VALUES (:user_id, :pay_id, :sales_date, :payment_method, :courier, :shipping_fee, :delivery_address, :contact_number)");
			$stmt->execute(['user_id'=>$user['id'], 'pay_id'=>$payid, 'sales_date'=>$date, 'payment_method'=>$payment_method, 'courier'=>$courier, 'shipping_fee'=>$fee, 'delivery_address'=>$address, 'contact_number'=>$contact_info]);
			$salesid = $conn->lastInsertId();
	
			try{
				$stmt = $conn->prepare("SELECT * FROM cart LEFT JOIN products ON products.id=cart.product_id WHERE user_id=:user_id");
				$stmt->execute(['user_id'=>$user['id']]);
				
				foreach($stmt as $row){
					$stmt = $conn->prepare("INSERT INTO details (sales_id, product_id, quantity) VALUES (:sales_id, :product_id, :quantity)");
					$stmt->execute(['sales_id'=>$salesid, 'product_id'=>$row['product_id'], 'quantity'=>$row['quantity']]);
				}

				$stmt = $conn->prepare("DELETE FROM cart WHERE user_id=:user_id");
				$stmt->execute(['user_id'=>$user['id']]);

				$_SESSION['success'] = 'Transaction successful. Thank you.';

			}
			catch(PDOException $e){
				$_SESSION['error'] = $e->getMessage();
			}

		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}

		$pdo->close();
	}
	
	header('location: profile.php');
	
?>