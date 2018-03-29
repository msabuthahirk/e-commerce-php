$(document).ready(function(){
// ---------------------------
$("#signup-section").hide();
$("#category-section").hide();
$("#shop-header-section").hide();
$("#product-list-section").hide();
$("#seach-section").hide();
$("#my-cart-section").hide();
// ---------------------------
$("#fh-top-panel").click(function(){
	$("#category-section").hide();
	$("#shop-panel").show();
	$("#signup-section").hide();
    $("#search-section").show();
    $("#shop-header-section").hide();
    $("#signup-button").show();
    $("#product-list-section").hide();
    $("#seach-section").hide();
    $("#my-cart-section").hide();
    
})
$("#shop-header-section").click(function(){
    $("#category-section").show();
    $("#search-section").show();
    $(this).show();
    $("#product-list-section").hide();
    $("#seach-section").hide();
})
// ---------------------------
function validateEmail(sEmail) {
	var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	if (filter.test(sEmail)) {
		return true;
	}
	else {
		return false;
	}
}
// ---------------------------
$("#first-shop").mouseenter(function(){
    $(".shop-panel-shops.shop1").css("opacity", "1");
})  
$("#first-shop").mouseleave(function(){
    $(".shop-panel-shops").css("opacity", "0.9");
})  
$("#second-shop").mouseenter(function(){
    $(".shop-panel-shops.shop2").css("opacity", "1");
})  
$("#second-shop").mouseleave(function(){
    $(".shop-panel-shops").css("opacity", "0.9");
}) 
$("#third-shop").mouseenter(function(){
    $(".shop-panel-shops.shop3").css("opacity", "1");
})  
$("#third-shop").mouseleave(function(){
    $(".shop-panel-shops").css("opacity", "0.9");
}) 
$("#fourth-shop").mouseenter(function(){
    $(".shop-panel-shops.shop4").css("opacity", "1");
})  
$("#fourth-shop").mouseleave(function(){
    $(".shop-panel-shops").css("opacity", "0.9");
}) 
$("#first-shop").click(function(){
	var shopRank = $("#one").val();
	$.ajax({
		url : "action.php",
		method : "POST",
		data : {shopRank:shopRank},
		success : function(value){
            var data = value.split(",");
            $("#shop-header-section").show();
            $("#seach-section").hide();
            $("#my-cart-section").hide();
			$("#shop-header-section").html("SHOP NAME: "+data[0]);
			$("#category-section").show();
			$("#shop-panel").hide();
            $("#shop-name").val(data[1]);
//            $("#shop-id").val(data[0]);
		}
	})
})
$("#second-shop").click(function(){
	var shopRank = $("#two").val();
	$.ajax({
		url : "action.php",
		method : "POST",
		data : {shopRank:shopRank},
		success : function(value){
            var data = value.split(",");
            $("#shop-header-section").show();
            $("#seach-section").hide();
            $("#my-cart-section").hide();
			$("#shop-header-section").html("SHOP NAME: "+data[0]);
			$("#category-section").show();
			$("#shop-panel").hide();
            $("#shop-name").val(data[1]);
		}
	})
})
$("#third-shop").click(function(){
	var shopRank = $("#three").val();
	$.ajax({
		url : "action.php",
		method : "POST",
		data : {shopRank:shopRank},
		success : function(value){
            var data = value.split(",");
            $("#shop-header-section").show();
            $("#seach-section").hide();
            $("#my-cart-section").hide();
			$("#shop-header-section").html("SHOP NAME: "+data[0]);
			$("#category-section").show();
			$("#shop-panel").hide();
            $("#shop-name").val(data[1]);
		}
	})
})
$("#fourth-shop").click(function(){
	var shopRank = $("#four").val();
	$.ajax({
		url : "action.php",
		method : "POST",
		data : {shopRank:shopRank},
		success : function(value){
            var data = value.split(",");
            $("#shop-header-section").show();
            $("#seach-section").hide();
            $("#my-cart-section").hide();
			$("#shop-header-section").html("SHOP NAME: "+data[0]);
			$("#category-section").show();
			$("#shop-panel").hide();
            $("#shop-name").val(data[1]);
		}
	})
})

    
    

$("#household-div").click(function(){
    var shopName = $("#shop-name").val();
    var catId = 1;
    $.ajax({
        url: "action.php",
        method : "POST",
        data: {shopName:shopName, catId:catId},
        success: function(data){
            $("#category-section").hide();
            $("#product-list-section").show();
            $("#product-list-section").html(data);
        }
    })
}) 
    
    
$("#electronics-div").click(function(){
    var shopName = $("#shop-name").val();
    var catId = 2;
    $.ajax({
        url: "action.php",
        method : "POST",
        data: {shopName:shopName, catId:catId},
        success: function(data){
            $("#category-section").hide();
            $("#product-list-section").show();
            $("#product-list-section").html(data);
        }
    })
})
    
$("#computer-div").click(function(){
    var shopName = $("#shop-name").val();
    var catId = 3;
    $.ajax({
        url: "action.php",
        method : "POST",
        data: {shopName:shopName, catId:catId},
        success: function(data){
            $("#category-section").hide();
            $("#product-list-section").show();
            $("#product-list-section").html(data);
        }
    })
})   
    
$("#books-div").click(function(){
    var shopName = $("#shop-name").val();
    var catId = 4;
    $.ajax({
        url: "action.php",
        method : "POST",
        data: {shopName:shopName, catId:catId},
        success: function(data){
            $("#category-section").hide();
            $("#product-list-section").show();
            $("#product-list-section").html(data);
        }
    })
})
    
    
$("#toys-div").click(function(){
    var shopName = $("#shop-name").val();
    var catId = 5;
    $.ajax({
        url: "action.php",
        method : "POST",
        data: {shopName:shopName, catId:catId},
        success: function(data){
            $("#category-section").hide();
            $("#product-list-section").show();
            $("#product-list-section").html(data);
        }
    })
})   
    
    
    
$("#shoes-div").click(function(){
    var shopName = $("#shop-name").val();
    var catId = 6;
    $.ajax({
        url: "action.php",
        method : "POST",
        data: {shopName:shopName, catId:catId},
        success: function(data){
            $("#category-section").hide();
            $("#product-list-section").show();
            $("#product-list-section").html(data);
        }
    })
})
    

$("#dress-div").click(function(){
    var shopName = $("#shop-name").val();
    var catId = 7;
    $.ajax({
        url: "action.php",
        method : "POST",
        data: {shopName:shopName, catId:catId},
        success: function(data){
            $("#category-section").hide();
            $("#product-list-section").show();
            $("#product-list-section").html(data);
        }
    })
})
    
$("#accessories-div").click(function(){
    var shopName = $("#shop-name").val();
    var catId = 8;
    $.ajax({
        url: "action.php",
        method : "POST",
        data: {shopName:shopName, catId:catId},
        success: function(data){
            $("#category-section").hide();
            $("#product-list-section").show();
            $("#product-list-section").html(data);
        }
    })
})
    
    
$("#grocieries-div").click(function(){
    var shopName = $("#shop-name").val();
    var catId = 9;
    $.ajax({
        url: "action.php",
        method : "POST",
        data: {shopName:shopName, catId:catId},
        success: function(data){
            $("#category-section").hide();
            $("#product-list-section").show();
            $("#product-list-section").html(data);
        }
    })
})

$("#gadget-div").click(function(){
    var shopName = $("#shop-name").val();
    var catId = 10;
    $.ajax({
        url: "action.php",
        method : "POST",
        data: {shopName:shopName, catId:catId},
        success: function(data){
            $("#category-section").hide();
            $("#product-list-section").show();
            $("#product-list-section").html(data);
        }
    })
})    
    
    
    
$("#signup-button").click(function(){
    $(this).hide();
	$("#category-section").hide();
    $("#seach-section").hide();
	$("#shop-panel").hide();
	$("#signup-section").show();
    $("#search-section").hide();
    $("#shop-header-section").hide();
    $("#product-list-section").hide();
    $("#my-cart-section").hide();
    
})

$("#input-password2").focusout(function(){
	var pass1 = $("#input-password1").val();
	var pass2 = $("#input-password2").val();
	if(pass1!=pass2){
		var msg = "password did not match...!!!"
		$("#password-error-signup").html(msg);
	}
	else{
		$("#password-error-signup").html(" ");
	}
})

$("#input-phone").focusout(function(){
	var str = $("#input-phone").val();
	var lnth = str.length;
	if(lnth==0){
			$("#phone-error-signup").html(" ");
		}
		else if(lnth!=10){
			var msg = "it should be exactly 10 numbers"
			$("#phone-error-signup").html(msg);
		}
		else{
			$("#phone-error-signup").html(" ");
		}
})

$("#input-name").focusout(function(){
	var msg = $("#input-name").val();
	// $("#name-error-signup").html(msg);
})

$("#input-mail").focusout(function(){
	var sEmail = $("#input-mail").val();
	var lnth = sEmail.length;
	if (lnth==0) {
		$("#mail-error-signup").html(" ");
	}
	else if (validateEmail(sEmail)) {
		$("#mail-error-signup").html(" ");
	}
	else{
		var msg = "Recheck your e-mail"
		$("#mail-error-signup").html(msg);
	}
})

$("#sign-me-up-btn").click(function(){
	var username = $('#input-name').val();
	var password = $('#input-password2').val();
	var phoneno = $('#input-phone').val();
	var email = $('#input-mail').val();
	var address = $('#input-address').val();
	$.ajax({
		url : "action.php",
		method : "POST",
		data: {username:username, password:password, phoneno:phoneno, email:email, address:address},
		success: function(data){
//			 $("#test-div").html(data);
			if(data=="please check all input fileds"){
				$("#signup-header").html("OOps.. Fill all data");
				$("#signup-header").css("color", "red");
			}
			else{
				window.location.href = "index.php";
			}
		}
	})

})

$("#signin-button").click(function(){
	var email = $("#login-email").val();
	var password = $("#login-password").val();
	$.ajax({
		url : "action.php",
		method: "POST",
		data: {lemail:email, lpassword:password},
		success: function(data){
			// alert(data);
			if(data=="failed"){
				$("#signin-button").css("background-color", "red");
				$("#signin-button").val("error");
			}
			else{
				window.location.href = "index.php";
			}
		}
	})
})
    $("#signin-button").mouseover(function(){
        $(this).css("background-color", "#B42DD2");
    })
    
    $("#signin-button").mouseleave(function(){
        $(this).css("background-color", "#39B54D");
    })
    
$("#login-email").click(function(){
	$("#signin-button").css("background-color", "#39B54D");
	$("#signin-button").val("signin");
})

$("#login-password").click(function(){
	$("#signin-button").css("background-color", "#39B54D");
	$("#signin-button").val("signin");
})

$("#logout-button").click(function(){
	var logout = "logout";
	$.ajax({
		url : "action.php",
		method : "POST",
		data : {logout:logout},
		success: function(data){
			if(data=="out"){
				// alert("out");
				window.location.href = "index.php";
			}
		}
	})
})
$("#search-button").click(function(){
    var searchValue = $("#search-input").val();
    $.ajax({
        url: "action.php",
        method: "POST",
        data: {searchValue:searchValue},
        success: function(data){
            $("#product-list-section").hide();
            $("#shop-header-section").hide();
            $("#my-cart-section").hide();
            $("#seach-section").show();
            $("#seach-section").html(data);
        }
    })
})

$("body").delegate("#cart-it", "click",function(){
    var pid = $(this).attr('pid');
    var order = $("#order-"+pid).val();
    $.ajax({
        url: "action.php",
        method: "POST",
        data: {pid:pid, order:order},
        success: function(data){
//           alert(data);
            if(data=="failure"){
                $("#stock-"+pid).css("background-color", "red");
            }
            else{
                $("#stock-"+pid).html(data);
            }
        }
    })

})
    
$("body").delegate("#delete-cart", "click",function(){
    var cid = $(this).attr('cid');
//    alert(cid);
    $.ajax({
        url: "action.php",
        method: "POST",
        data: {deleteCart: cid},
        success: function(data){
            $("#my-cart-section").html(data);
        }
    })
})
//    alert(order);
//    alert(abc);
$("body").delegate("#update-cart", "click",function(){
    var cid = $(this).attr('cid');
    var quantity = $("#quantity-"+cid).val();
    var price = $("#price-"+cid).attr('price');
//    alert(cid);
    $.ajax({
        url: "action.php",
        method: "POST",
        data: {updateCart: cid, quantity:quantity, price:price},
        success: function(data){
            $("#my-cart-section").html(data);
        }
    })
})   

$("#my-cart-open").click(function(){
    var openCart = "1";
    $.ajax({
        url: "action.php",
        method: "POST",
        data: {openCart:openCart},
        success: function(data){
            $("#my-cart-section").show();
            $("#my-cart-section").html(data);
            $("#category-section").hide();
            $("#signup-section").hide();
            $("#search-section").show();
            $("#shop-header-section").hide();
            $("#signup-button").show();
            $("#product-list-section").hide();
            $("#seach-section").hide();
            $("#shop-panel").hide();
        }
    })
})

// ---------------------------
	// $("#category-section").hide();
	// $("#shop-panel").hide();
	// $("#signup-section").show();
// ---------------------------
})