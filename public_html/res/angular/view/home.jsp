<%@page import="in.sc.bean.MetaBean"%>
<%@page import="in.sc.admin.ApplicationUtils"%>
<%@page import="in.sc.dao.ProductHelper"%>
<%@page import="in.sc.bean.FeatureBean"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Iterator"%>
<%@page import="in.sc.bean.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
               <title>Compare Smartly | Smart choices, Best prices in India</title>
        <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/res/img/logo/3rd_1.png"/>
        <meta name='description' content='We, CompareSmartly, help you find the best products in your budget in India and help you find the best price online' />

        <meta property='og:title' content='Compare Smartly | Smart choices, Best prices in India' />
        <meta property='og:url' content='http://comparesmartly.in' />
        <meta property='og:image' content='${pageContext.request.contextPath}/res/img/home.jpg' />
        <meta property="og:type"   content="product.group" />
        <meta property='og:site_name' content='CompareSmartly' />	
        <meta property='og:description' content='We, CompareSmartly, help you find the best products in your budget in India and help you find the best price online' />

        <meta name="twitter:site" content="@ngpricecheck">
        <meta name="twitter:title" content="Compare Smartly | Smart choices, Best prices in India">
        <meta name="twitter:description" content="We, CompareSmartly, help you find the best products in your budget in India and help you find the best price online">
        <meta name="twitter:image" content="${pageContext.request.contextPath}/res/img/home.jpg">

        
        <!-- Bootstrap Core CSS -->
        <link href="${pageContext.request.contextPath}/res/css/bootstrap.min.css" rel="stylesheet">
        
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.4.2/angular-ui-router.min.js"></script>
        <script src="https://code.angularjs.org/1.6.1/angular-sanitize.min.js"></script>
        
        <!--<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular-route.min.js"></script>-->
        
        <script src="${pageContext.request.contextPath}/res/angular/app.js"></script>
        
        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/res/css/modern-business.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/res/css/menu.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="${pageContext.request.contextPath}/res/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script>

        </script>
        <style media="screen">

        </style>
        <style>
            .row-eq-height{
                padding: 10px;
                outline-offset: -10px;
                -moz-outline-radius: 10px;  
                -webkit-outline-radius: 10px;
            }
            .row-eq-height-old{
                margin-top:10px;
                padding: 20px;
                outline: 2px solid #ccc;
                outline-offset: -10px;
                -moz-outline-radius: 10px;
                -webkit-outline-radius: 10px;
            }
            .square {
                float:left;
                position: relative;
                width: 35px;
                margin:1.66%;
                background-color:#1E1E1E;
                overflow:hidden;
            }

            .content {
                
                height:90%; /* = 100% - 2*5% padding */
                width:90%; /* = 100% - 2*5% padding */
                padding: 5%;
                font-weight:900;
                color: #fff;
                text-align: center;
            }
            .table{
                display:table;
                width:100%;
                height:100%;
            }
            .table-cell{
                display:table-cell;
                vertical-align:middle;
            }
            .filter-scrollable{
                height:300px; 
                overflow-y:scroll;
            }
            #SearchParameters.in,
            #SearchParameters.collapsing {
                display: block!important;
            }
            .panel{
                margin-bottom: 3px;
            }
            .large-text{
                font-size: 25px;
                margin-top: 5px;
                margin-bottom: 5px;
            }
            .mdlarge-text{
                font-size: 20px;
                margin-bottom: 5px;
            }
            .md-text{
                font-size: 18px;
            }
            .navbar-inverse{
                background-color: #961440;
            }
            .btn-primary{
                background-color: #961440;
            }
        </style>

    </head>

    <body style="background-color: #F5F7F5; overflow-x: hidden">

        <!-- Navigation -->
        <jsp:include page="menu.jsp" />  <!-- Page Content -->
        <!-- Page Content -->
        <div class="container" ng-app="CSApp" >
            <div ui-view></div>
          <div class="row">
            <div class="col-lg-6">
                <ul class="list-inline">
                    <li><a href="#aboutus11">About Us</a></li>
                    <a ui-sref=".aout" class="btn btn-primary">List</a>
                    <li><a href="${pageContext.request.contextPath}/termofuse">Terms Of use</a></li>
                    <li><a href="${pageContext.request.contextPath}/privacypolicy">Privacy Policy</a></li>
                </ul>
            </div>
            <div class="col-lg-6">
                
            </div>
        </div>
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p class="text-center">Copyright &copy; comparesmartly.in 2016</p>
                </div>
            </div>
        </footer>


        </div>
        <!-- /.container -->

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->

    <script src="${pageContext.request.contextPath}/res/js/bootstrap.min.js"></script>
        <!-- Script to Activate the Carousel -->
        <script>
            $('.carousel').carousel({
                interval: 5000 //changes the speed
            })
        </script>

    </body>

</html>
