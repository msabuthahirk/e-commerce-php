<?php
	include 'db.php';
	session_start();
    $mode="nouser";
	if(isset($_SESSION["login-id"])){
		$mode="user";
	}
//random string generator
function generateRandomString($length = 15) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}
//end random string generator

	if(isset($_POST["shopRank"])){
		$test = $_POST["shopRank"];
		$query1= mysqli_query($con, "SELECT * from shops WHERE `shop_rank`='$test'");
		$row1=mysqli_fetch_assoc($query1);
		$shopName = $row1['shop_name'];
        $shopId = $row1['shop_id'];
        echo $shopName.",".$shopId;
	}
	if(isset($_POST['username']) && isset($_POST['password']) && isset($_POST['phoneno'])){
		$username = $_POST['username'];
		$password = $_POST['password'];
		$phoneno = $_POST['phoneno'];
		$email = $_POST['email'];
		$address = $_POST['address'];
		if(empty($username) || empty($password) || empty($phoneno) || empty($email) || empty($address)){
			echo "please check all input fileds";
		}
		else{
			$userid = generateRandomString();
			$query2 = mysqli_query($con, "INSERT INTO `customers` (`username`, `password`, `phone`, `email`, `address`, `userid`) VALUES ('$username', '$password', '$phoneno', '$email', '$address', '$userid')");
			if($query2){
				echo "success";
			}
		}
	}
	if(isset($_POST['lemail']) && isset($_POST['lpassword'])){
		$email = $_POST['lemail'];
		$password = $_POST['lpassword'];
		$query3 = mysqli_query($con, "SELECT * FROM `customers` WHERE `email`='$email' AND `password`='$password'");
		$row3 = mysqli_fetch_assoc($query3);
		if($row3){
			// echo "success";
			$_SESSION["login-id"]=$row3["userid"];
		}
		else{
			echo "failed";
		}
	}
	if(isset($_POST['logout'])){
		unset($_SESSION["login-id"]);
		echo "out";
	}
    if(isset($_POST['shopName']) && isset($_POST['catId'])){
        $shopid = $_POST['shopName'];
        $catid = $_POST['catId'];
        $query4 = mysqli_query($con, "SELECT `cat_name` FROM `categories` WHERE `id`='$catid'");
        $row4 = mysqli_fetch_assoc($query4);
        if($row4){
//			echo "success";
//			$_SESSION["login-id"]=$row3["userid"];
            $catname = $row4['cat_name'];
		}
//        $catname = "SHOES";
//        echo $catname;
        echo '<div class="categories-header-div">'.$catname.'</div>';
//        $test=;
        $query5=mysqli_query($con,"SELECT * FROM products WHERE category = '$catname' and shope_id='$shopid' and stock>0");
//        $query5=mysqli_query($con,"SELECT * FROM amana WHERE category = SHOES");
        if(mysqli_num_rows($query5) > 0){
        while($row5=mysqli_fetch_array($query5))
        {
        $img=$row5['img'];
        $productname=$row5['product_name'];
        $brand=$row5['brand'];
        $price=$row5['price'];
        $stock=$row5['stock'];
        $productid=$row5['product_id'];
        echo '
        <div class="product-piece" id="product-piece">
            <div class="product-image">
                <img src="'.$img.'">
            </div>
            <div class="product-details">
                <div class="product-details-header">'.$productname.'<br/>'.$brand.'</div>
                <div class="product-details-content">
                    <b>Price: </b> &#8377;'.$price.'
                </div>
                <div class="cart-options-div">
                    <center>
                        <div class="stock-round" id="stock-'.$productid.'">'.$stock.'</div>';
            if($mode=='user'){
                echo '<input class="stock-round stock-round-input" type="text" value="1" id="order-'.$productid.'">
                <button class="cart-add-button" pid='.$productid.' id="cart-it">cart it</button>';
            }
        echo'</center>
                </div>
            </div>
        </div>';
        }
    }
        else{
            echo '<div class="nothing-to-display">nothing to display</div>';
        }
    }
if(isset($_POST['searchValue'])){
        $searchValue = $_POST['searchValue'];
        $query4 = mysqli_query($con, "SELECT * FROM `products` WHERE stock>0 and (`brand` LIKE '$searchValue' OR `product_name` LIKE '$searchValue' OR `category` LIKE '$searchValue') order by `shop_rank`");
//        $row4 = mysqli_fetch_assoc($query4);
        echo '<div class="search-out">';
        if(mysqli_num_rows($query4) > 0){
        while($row4=mysqli_fetch_array($query4))
        {
        $img=$row4['img'];
        $brand=$row4['brand'];
        $price=$row4['price'];
        $stock=$row4['stock'];
        $productname=$row4['product_name'];
        $productid=$row4['product_id'];
        $shopid=$row4['shope_id'];
        $query5 = mysqli_query($con, "SELECT shop_name FROM `shops` WHERE `shop_id`='$shopid'");
        $row5=mysqli_fetch_assoc($query5);
        $shopname=$row5['shop_name'];
        echo '
        <div class="product-piece2" id="product-piece2">
            <div class="shop-name-search-out">'.$shopname.'</div>
            <div class="product-image">
                <img src="'.$img.'">
            </div>
            <div class="product-details">
                <div class="product-details-header">'.$productname.'<br/>'.$brand.'</div>
                <div class="product-details-content">
                    <b>Price: </b> &#8377;'.$price.'
                </div>
                <div class="cart-options-div">
                <center>
                    <div class="stock-round" id="stock-'.$productid.'">'.$stock.'</div>';
            if($mode=='user'){
                echo '
                <input class="stock-round stock-round-input" type="text" value="1" id="order-'.$productid.'">
                    <button class="cart-add-button" pid='.$productid.' id="cart-it">cart it</button>';
            }
        echo'</center>
                </div>
            </div>
        </div>';
        }
        echo '</div>';
    }
        else{
            echo '<div class="nothing-to-display">nothing to display</div>';
        }
    }

if(isset($_POST['pid']) && isset($_POST['order'])){
    $productid=$_POST['pid'];
    $order=$_POST['order'];
    $uid=$_SESSION["login-id"];
    $cartid=generateRandomString(30);
    $query6=mysqli_query($con, "SELECT * FROM products WHERE product_id='$productid'");
    $row6=mysqli_fetch_assoc($query6);
    $productname=$row6['product_name'];
    $img=$row6['img'];
    $price=$row6['price'];
    
    
    
//    ranking algorithm start
    $shopid=$row6['shope_id'];
    $query10=mysqli_query($con, "SELECT * FROM shops WHERE `shop_id`='$shopid'");
    $row10=mysqli_fetch_assoc($query10);
    $oldpurch=$row10['purchases'];
    $newpurch=$oldpurch+1;
    $query11=mysqli_query($con, "UPDATE shops SET `purchases`='$newpurch' WHERE `shop_id`='$shopid'");
    $query12=mysqli_query($con, "SELECT * FROM shops ORDER BY `purchases`");
    $num2=mysqli_num_rows($query12);
    $num=mysqli_num_rows($query12);
    while($row12=mysqli_fetch_array($query12)){
        $purchval=$row12['purchases'];
        $shopid2=$row12['shop_id'];
        $query13=mysqli_query($con, "UPDATE shops SET `shop_rank`='$num' WHERE `shop_id`='$shopid2'");
        $query13=mysqli_query($con, "UPDATE products SET `shop_rank`='$num' WHERE `shope_id`='$shopid2'");
        $num--;
    }
//    ranking algorithm end
    
    
    $total=$order*$price;
    $query7=mysqli_query($con, "INSERT into cart (`product_id`, `cart_id`, `user_id`, `product_name`, `product_image`, `quantity`, `price`, `total_amount`) VALUES ('$productid', '$cartid', '$uid', '$productname', '$img', '$order', '$price', '$total')");
    if($query7){
//        echo $order;
        $query8=mysqli_query($con, "SELECT * FROM `products` WHERE `product_id`='$productid'");
        $row8=mysqli_fetch_assoc($query8);
        $oldcount=$row8['stock'];
        $newcount=$oldcount-$order;
        if($newcount<0){
            echo "failure";
        }
        else{
                    $query9=mysqli_query($con, "UPDATE `products` SET `stock`='$newcount' WHERE `product_id`='$productid'");
        if($query9){
            echo $newcount;
        }
        }
    }
}

if(isset($_POST['openCart'])){
    $userid=$_SESSION["login-id"];
    $final=0;
    $query10=mysqli_query($con, "SELECT * FROM cart WHERE user_id='$userid'");
    echo'
    <div class="my-cart-header">MY CART</div>
        <div class="my-cart-list">
    ';
    if(mysqli_num_rows($query10)>0){
        $final=0;
        while($row10=mysqli_fetch_array($query10)){
            $productid=$row10['product_id'];
            $cartid=$row10['cart_id'];
            $quantity=$row10['quantity'];
            $price=$row10['price'];
            $total=$row10['total_amount'];
            $final=$final+$total;
            
            
            $query11=mysqli_query($con, "SELECT * FROM products WHERE `product_id`='$productid'");
            $row11=mysqli_fetch_assoc($query11);
            $productname=$row11['product_name'];
            $brand=$row11['brand'];
            $shopid=$row11['shope_id'];
            $img=$row11['img'];
            
            $query12=mysqli_query($con, "SELECT * FROM shops WHERE `shop_id`='$shopid'");
            $row12=mysqli_fetch_assoc($query12);
            $shopname=$row12['shop_name'];
            $shopphone=$row12['shop_phone'];
            
            echo'
            <div class="product-piece" id="product-piece">
                <div class="shope-name-cart">'.$shopname.' 
                &nbsp;&nbsp;&nbsp;Phone:'.$shopphone.'</div>
            <div class="product-image">
                <img src="'.$img.'">
            </div>
            <div class="product-details">
                <div class="product-details-header">'.$productname.'<br/> '.$brand.'</div>
                <div class="product-details-content" price="'.$price.'" id="price-'.$cartid.'">
                    <b>Price: </b> &#8377;'.$price.'
                </div>
                <div class="cart-options-div">
                    <center>
                        <input class="stock-round stock-round-input line-up" type="text" value="'.$quantity.'" id="quantity-'.$cartid.'">
                        <div cid="'.$cartid.'" class="stock-round white-bg" id="delete-cart"><img src="img/Delete_Icon.png"></div>
                        <div cid="'.$cartid.'" class="stock-round white-bg" id="update-cart"><img src="img/Update.png"></div>
                    </center>
                </div>
            </div>
        </div>
            ';
            
        }
        echo '
            </div>
        ';
    }
    else{
        echo '<div class="nothing-to-display">nothing to display</div>';
    }
    echo'
            <div class="my-cart-header roboto-font">Total : &#8377;'.$final.'</div>
    ';
    
}

if(isset($_POST['deleteCart'])){
    $deleteid=$_POST['deleteCart'];
    $final=0;
    $query9=mysqli_query($con, "DELETE FROM cart WHERE `cart_id`='$deleteid'");
    $userid=$_SESSION["login-id"];
    $query10=mysqli_query($con, "SELECT * FROM cart WHERE user_id='$userid'");
    echo'
    <div class="my-cart-header">MY CART</div>
        <div class="my-cart-list">
    ';
    if(mysqli_num_rows($query10)>0){
        $final=0;
        while($row10=mysqli_fetch_array($query10)){
            $productid=$row10['product_id'];
            $cartid=$row10['cart_id'];
            $quantity=$row10['quantity'];
            $price=$row10['price'];
            $total=$row10['total_amount'];
            $final=$final+$total;
            
            
            $query11=mysqli_query($con, "SELECT * FROM products WHERE `product_id`='$productid'");
            $row11=mysqli_fetch_assoc($query11);
            $productname=$row11['product_name'];
            $brand=$row11['brand'];
            $shopid=$row11['shope_id'];
            $img=$row11['img'];
            
            $query12=mysqli_query($con, "SELECT * FROM shops WHERE `shop_id`='$shopid'");
            $row12=mysqli_fetch_assoc($query12);
            $shopname=$row12['shop_name'];
            $shopphone=$row12['shop_phone'];
            
            echo'
            <div class="product-piece" id="product-piece">
                <div class="shope-name-cart">'.$shopname.' 
                &nbsp;&nbsp;&nbsp;Phone:'.$shopphone.'</div>
            <div class="product-image">
                <img src="'.$img.'">
            </div>
            <div class="product-details">
                <div class="product-details-header">'.$productname.'<br/> '.$brand.'</div>
                <div class="product-details-content" price="'.$price.'" id="price-'.$cartid.'">
                    <b>Price: </b> &#8377;'.$price.'
                </div>
                <div class="cart-options-div">
                    <center>
                        <input class="stock-round stock-round-input line-up" type="text" value="'.$quantity.'" id="quantity-'.$cartid.'">
                        <div cid="'.$cartid.'" class="stock-round white-bg" id="delete-cart"><img src="img/Delete_Icon.png"></div>
                        <div cid="'.$cartid.'" class="stock-round white-bg" id="update-cart"><img src="img/Update.png"></div>
                    </center>
                </div>
            </div>
        </div>
            ';
            
        }
        echo '
            </div>
        ';
    }
    else{
        echo '<div class="nothing-to-display">nothing to display</div>';
    }
    echo'
            <div class="my-cart-header roboto-font">Total : &#8377;'.$final.'</div>
    ';
    
}

if(isset($_POST['updateCart'])){
    $updateid=$_POST['updateCart'];
    $quantity=$_POST['quantity'];
    $pricenew=$_POST['price'];
    $newprice=$pricenew*$quantity;
    $final=0;
    $query9=mysqli_query($con, "UPDATE cart SET `quantity`='$quantity' WHERE `cart_id`='$updateid'");
    $query8=mysqli_query($con, "UPDATE cart SET `total_amount`='$newprice' WHERE `cart_id`='$updateid'");
    $userid=$_SESSION["login-id"];
    $query10=mysqli_query($con, "SELECT * FROM cart WHERE user_id='$userid'");
    echo'
    <div class="my-cart-header">MY CART</div>
        <div class="my-cart-list">
    ';
    if(mysqli_num_rows($query10)>0){
        $final=0;
        while($row10=mysqli_fetch_array($query10)){
            $productid=$row10['product_id'];
            $cartid=$row10['cart_id'];
            $quantity=$row10['quantity'];
            $price=$row10['price'];
            $total=$row10['total_amount'];
            $final=$final+$total;
            
            
            $query11=mysqli_query($con, "SELECT * FROM products WHERE `product_id`='$productid'");
            $row11=mysqli_fetch_assoc($query11);
            $productname=$row11['product_name'];
            $brand=$row11['brand'];
            $shopid=$row11['shope_id'];
            $img=$row11['img'];
            
            $query12=mysqli_query($con, "SELECT * FROM shops WHERE `shop_id`='$shopid'");
            $row12=mysqli_fetch_assoc($query12);
            $shopname=$row12['shop_name'];
            $shopphone=$row12['shop_phone'];
            
            echo'
            <div class="product-piece" id="product-piece">
                <div class="shope-name-cart">'.$shopname.' 
                &nbsp;&nbsp;&nbsp;Phone:'.$shopphone.'</div>
            <div class="product-image">
                <img src="'.$img.'">
            </div>
            <div class="product-details">
                <div class="product-details-header">'.$productname.'<br/> '.$brand.'</div>
                <div class="product-details-content" price="'.$price.'" id="price-'.$cartid.'">
                    <b>Price: </b> &#8377;'.$price.'
                </div>
                <div class="cart-options-div">
                    <center>
                        <input class="stock-round stock-round-input line-up" type="text" value="'.$quantity.'" id="quantity-'.$cartid.'">
                        <div cid="'.$cartid.'" class="stock-round white-bg" id="delete-cart"><img src="img/Delete_Icon.png"></div>
                        <div cid="'.$cartid.'" class="stock-round white-bg" id="update-cart"><img src="img/Update.png"></div>
                    </center>
                </div>
            </div>
        </div>
            ';
            
        }
        echo '
            </div>
        ';
    }
    else{
        echo '<div class="nothing-to-display">nothing to display</div>';
    }
    echo'
            <div class="my-cart-header roboto-font">Total : &#8377;'.$final.'</div>
    ';
    
}
















?>