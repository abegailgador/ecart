<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
  <?php
    $name = '';
    $number = '';
    $address = '';
    $conn = $pdo->open();
    $stmt = $conn->prepare("SELECT * FROM users WHERE id=:id");
    $stmt->execute(['id'=>$_SESSION['user']]);
    $row = $stmt->fetch();
    $firstname = $row['firstname'];
    $lastname = $row['lastname'];
    $name .= $firstname." ".$lastname;
    $number = $row['contact_info'];
    $address = $row['address'];

    $set='123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $code=substr(str_shuffle($set), 0, 24);
  ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
            <h2>Checkout</h2><br>
            <form action="<?php echo 'sales.php?pay=PAY-'."".$code ?>" method="POST">
              <div class="form-group">
                <div class="form-group col-md-6">
                  <label for="inputName">Name</label>
                  <input type="text" name="inputName" class="form-control" id="inputName" value="<?php echo $name ?>" required>
                </div>
                <div class="form-group col-md-6">
                  <label for="inputNumber">Number</label>
                  <input type="text" name="inputNumber" class="form-control" id="inputNumber" value="<?php echo $number ?>" required>
                </div>
              </div>
              <div class="form-group col-md-12" >
                <label for="inputAddress">Address</label>
                <input type="text" name="inputAddress" class="form-control" id="inputAddress" value="<?php echo $address ?>" required>
              </div>
              <div class="form-row">
                <div class="form-group col-md-4">
                  <label for="inputPaymentMethod">Payment Method</label>
                  <select name="inputPaymentMethod" id="inputPaymentMethod" class="form-control">
                    <option selected value="1">Cash on Delivery</option>
                    <option value="2">Pick-up</option>
                  </select>
                </div>
                <div class="form-group col-md-4">
                  <label for="inputCourier">Courier</label>
                  <select name="inputCourier" id="inputCourier" class="form-control">
                    <option selected  value="1">J&T Express</option>
                    <option value="2">LBC</option>
                    <option value="3">Ninja Van</option>
                  </select> 
                </div>
                <div class="form-group col-md-4">
                  <label>Shipping Fee</label>
                  <input type="text" name="fee" class="form-control" id="fee" value="155" placeholder="155" readonly>
                </div>
              </div>
              <button type="submit" class="btn btn-primary btn-flat" style="border-radius: 6px; margin-left: 15px; margin-top: 15px;">Place Order</button>
            </form>
	        	</div>
	        	<div class="col-sm-3">
	        		<?php include 'includes/sidebar.php'; ?>
	        	</div>
	        </div>
	      </section>
	    </div>
	  </div>
  
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
<script>
  $(document).ready(function(){
    $("#inputPaymentMethod").change(function(){
      $("#inputCourier").prop('disabled', $(this).val() == 2);
      // $("#fee").prop('readonly', $(this).val() == 2);

      if ($(this).val() == 1) {
        $("#fee").attr("placeholder", "155").val(155).focus().blur();

        var newOptions = {"J&T Express": "1",
          "LBC": "2",
          "Ninja Van": "3"
        };
        var $el = $("#inputCourier");
        $el.empty(); // remove old options
        $.each(newOptions, function(key,value) {
          $el.append($("<option></option>")
            .attr("value", value).text(key));
        });

        $("#fee").setAttribute('readonly', true);
      }
      if ($(this).val() == 2) {
        var newOptions = {"N/A": "0"};
        var $el = $("#inputCourier");
        $el.empty(); // remove old options
        $.each(newOptions, function(key,value) {
          $el.append($("<option></option>")
            .attr("value", value).text(key));
        });

        $("#fee").prop('readonly', $(this).val() == 2);
        $("#fee").attr("placeholder", "").val(0).focus().blur();
      }
    });

    $("#inputCourier").change(function(){
      if ($(this).val() == 1) {
        $("#fee").attr("placeholder", "").val(155).focus().blur();
      }
      else if ($(this).val() == 2) {
        $("#fee").attr("placeholder", "").val(85).focus().blur();
      }
      else if ($(this).val() == 3) {
        $("#fee").attr("placeholder", "").val(100).focus().blur();
      }
    });
  });
</script>
</body>
</html>