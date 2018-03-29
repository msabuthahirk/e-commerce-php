<?php
	include 'db.php';
	session_start();
	$mode="nouser";
	if(isset($_SESSION["login-id"])){
		$mode="user";
	}
?>
<html>
<head>
	<title>BuyOnClick</title>
	<link rel="stylesheet" type="text/css" href="main.css">
	<link rel="icon" href="img/logo5.png" type="image/gif" sizes="16x16">
	<script src="js/jquery2.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="main.js"></script>
</head>
<body>
	<?php
		//topbar
		if($mode=='nouser'){
			include 'nousertopbar.php';
		}
		if($mode=='user'){
			include 'usertopbar.php';
		}
	?>
    <div class="search-panel" id="search-section">
        <div class="search-something"></div>
        <span class="search-portion-span">
            <input type="text" class="top-panel-input custom-margin" id="search-input" placeholder="search something">
            <button class="search-button" id="search-button">search</button>
        </span>
    </div>
    
<!--    mycart-section-start-->
    <div id="my-cart-section" class="my-cart-section">
    </div>
<!--    mycart-section-end-->
    
    
    
    <div class="seach-section" id="seach-section">        
    </div>
    
    
    
    <div id="shop-header-section" class="search-panel shop-name-font">
    </div>
	
    <div class="shop-panel" id="shop-panel">
		<div class="shop-panel-header">Top Ranking Shops</div>
		<!-- <div class="all-shops-img"></div> -->
		<div class="shop-panel-shops shop1" id="first-shop">
			<div class="shop-panel-shop-name">
				<?php
				$query1= mysqli_query($con, "SELECT * from shops WHERE `shop_rank`=1");
				$row1=mysqli_fetch_assoc($query1);
				echo $row1['shop_name'];
				?>
			</div>
			<div class="shop-panel-shop-address">
				<?php
				echo $row1['shop_mail'];
				echo "<br/>";
				echo $row1['shop_address'];
				echo "<br/>";
				echo $row1['shop_phone'];
				?>
			</div>
		</div>
		<div class="shop-panel-shops shop2" id="second-shop">
			<div class="shop-panel-shop-name">
				<?php
				$query2= mysqli_query($con, "SELECT * from shops WHERE `shop_rank`=2");
				$row2=mysqli_fetch_assoc($query2);
				echo $row2['shop_name'];
				?>
			</div>
			<div class="shop-panel-shop-address">
				<?php
				echo $row2['shop_mail'];
				echo "<br/>";
				echo $row2['shop_address'];
				echo "<br/>";
				echo $row2['shop_phone'];
				?>
			</div>
		</div>
		<div class="shop-panel-shops shop3" id="third-shop">
			<div class="shop-panel-shop-name">
				<?php
				$query3= mysqli_query($con, "SELECT * from shops WHERE `shop_rank`=3");
				$row3=mysqli_fetch_assoc($query3);
				echo $row3['shop_name'];
				?>
			</div>
			<div class="shop-panel-shop-address">
				<?php
				echo $row3['shop_mail'];
				echo "<br/>";
				echo $row3['shop_address'];
				echo "<br/>";
				echo $row3['shop_phone'];
				?>
			</div>
		</div>
		<div class="shop-panel-shops shop4" id="fourth-shop">
			<div class="shop-panel-shop-name">
				<?php
				$query4= mysqli_query($con, "SELECT * from shops WHERE `shop_rank`=4");
				$row4=mysqli_fetch_assoc($query4);
				echo $row4['shop_name'];
				?>
			</div>
			<div class="shop-panel-shop-address">
				<?php
				echo $row4['shop_mail'];
				echo "<br/>";
				echo $row4['shop_address'];
				echo "<br/>";
				echo $row4['shop_phone'];
				?>
			</div>
		</div>
	</div>
<div id="category-section">
	<div class="categories-header-div">Categories</div>
	<div class="category-piece">
		<div class="round-250" id="household-div">
			<img src="img/house.jpg">
		</div>
		<div class="category-name">HOUSEHOLD</div>
	</div>
	<div class="category-piece" id="electronics-div">
		<div class="round-250">
			<img src="img/electronics.jpg">
		</div>
		<div class="category-name">ELECTRONICS</div>
	</div>
	<div class="category-piece">
		<div class="round-250" id="computer-div">
			<img src="img/computer.jpg">
		</div>
		<div class="category-name">COMPUTER</div>
	</div>
	<div class="category-piece">
		<div class="round-250" id="books-div">
			<img src="img/books.jpg">
		</div>
		<div class="category-name">BOOKS</div>
	</div>
	<div class="category-piece">
		<div class="round-250" id="toys-div">
			<img src="img/toys.jpg">
		</div>
		<div class="category-name">TOYS</div>
	</div>
	<div class="category-piece">
		<div class="round-250" id="shoes-div">
			<img src="img/shoe.jpeg">
		</div>
		<div class="category-name">SHOES</div>
	</div>
	<div class="category-piece">
		<div class="round-250" id="dress-div">
			<img src="img/dress.jpg">
		</div>
		<div class="category-name">DRESS</div>
	</div>
	<div class="category-piece">
		<div class="round-250" id="accessories-div">
			<img src="img/accessories.jpg">
		</div>
		<div class="category-name">ACCESSORIES</div>
	</div>
		<div class="category-piece">
		<div class="round-250" id="grocieries-div">
			<img src="img/grocery.jpg">
		</div>
		<div class="category-name">GROCERIES</div>
	</div>
		<div class="category-piece">
		<div class="round-250" id="gadget-div">
			<img src="img/gadgets.jpg">
		</div>
		<div class="category-name">GADGETS</div>
	</div>
</div>
	<div id="outa"></div>
	<div class="hide-it" id="letme">
		<input type="text" id="one" value="1">
		<input type="text" id="two" value="2">
		<input type="text" id="three" value="3">
		<input type="text" id="four" value="4">
        <input type="text" id="five" value="5">
        <input type="text" id="six" value="6">
        <input type="text" id="seven" value="7">
        <input type="text" id="eight" value="8">
        <input type="text" id="nine" value="9">
        <input type="text" id="ten" value="10">
        
        
	</div>
<div id="signup-section">
	<div class="signup-header" id="signup-header">SignUp Here....</div>
	<div class="signup-section">
		<input type="text" placeholder="name" class="signup-input" id="input-name" name="username" required="required">
		<div id="name-error-signup" class="signup-error"></div>
		<input type="password" placeholder="password" class="signup-input" id="input-password1">
		<input type="password" placeholder="re-enter password" class="signup-input" id="input-password2" name="password">
		<div id="password-error-signup" class="signup-error"></div>
		<input type="text" placeholder="phone" class="signup-input" id="input-phone" name="phoneno">
		<div id="phone-error-signup" class="signup-error"></div>
		<input type="text" placeholder="e-mail" class="signup-input" id="input-mail" name="email">
		<div id="mail-error-signup" class="signup-error"></div>
		<input type="text" placeholder="address" class="signup-input" id="input-address" name="address">
		<center>
			<button class="sign-me-up-btn" id="sign-me-up-btn">Sign me UP</button>
		</center>
	</div>
</div>
<div id="test-div"></div>
<!--    Search section    -->
<div id="product-list-section">  
</div>
    
<div style="display: none">
    <input id="shop-name"/>
<!--    <input id="shop-id"/>-->
</div>
</body>
</html>