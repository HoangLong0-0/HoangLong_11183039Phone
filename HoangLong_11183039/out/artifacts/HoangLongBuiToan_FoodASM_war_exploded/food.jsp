<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 15-04-2021
  Time: 7:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <!-- Required Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Page Title -->
    <title>Foodfun</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/logo/favicon.png" type="image/x-icon">

    <!-- CSS Files -->
    <link rel="stylesheet" href="assets/css/animate-3.7.0.css">
    <link rel="stylesheet" href="assets/css/font-awesome-4.7.0.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap-4.1.3.min.css">
    <link rel="stylesheet" href="assets/css/owl-carousel.min.css">
    <link rel="stylesheet" href="assets/css/jquery.datetimepicker.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/food_detail.css">

</head>
<body>
<c:set var="p" value="${requestScope.food}" />
<div id="container" style="margin-top: 200px">

    <!-- Start	Product details -->
    <div class="product-details">

        <!-- 	Product Name -->
        <h1>${p.name}</h1>
        <!-- 		<span class="hint new">New</span> -->
        <!-- 		<span class="hint free-shipping">Free Shipping</span> -->
        <!-- 		the Product rating -->


        <!-- The most important information about the product -->
        <p class="information">${p.description}</p>



        <!-- 		Control -->
        <div class="control" style="bottom: 0%">

            <!-- Start Button buying -->
            <button class="btn">
                <!-- 		the Price -->
                <span class="price">${p.price}</span>
                <!-- 		Buy Now / ADD to Cart-->
                <span class="buy">Change</span>
                <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
                <script>
                    $( document ).ready(function() {
                        $( "#delete_btn" ).click(function() {
                           var answer = window.confirm("DELETE?");
                            if(answer){
                                $.ajax({
                                    type: "GET",
                                    url: "delete",
                                    data: {id: $("delete_food_id").text()},
                                    success: function(data) {
                                        alert(data);
                                    }
                                    //dataType: dataType
                                });
                                /*$.get( "delete?id=2", function( data ) {

                                    alert( "Load was performed." );
                                });*/
                            }
                            else {

                            }
                        });
                    });

                </script>
                <button id="delete_btn">
                    <span id="delete_food_id" style="display: none">${p.id}</span>
                    <span class="buy">Delete</span>
                </button>

            </button>
            <!-- End Button buying -->

        </div>

    </div>

    <!-- 	End	Product details   -->



    <!-- 	Start product image & Information -->

    <div class="product-image">
        <img src="${p.image_url}">
    </div>
    <!--  End product image  -->


</div>

<!-- Javascript -->
<script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
<script src="assets/js/vendor/bootstrap-4.1.3.min.js"></script>
<script src="assets/js/vendor/wow.min.js"></script>
<script src="assets/js/vendor/owl-carousel.min.js"></script>
<script src="assets/js/vendor/jquery.datetimepicker.full.min.js"></script>
<script src="assets/js/vendor/jquery.nice-select.min.js"></script>
<script src="assets/js/main.js"></script>
<%--<script src="assets/js/vendor/food_detail.min.js"></script>--%>
</body>




