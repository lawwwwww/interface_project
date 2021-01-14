/*global angular*/

var app=angular.module('myApp',["ngRoute"]);
app.filter("up",function()			//custom filter to capitalize the string
{
	return function(num1)			//return function
	{
		var ans=num1.toUpperCase();	//assign uppercase value to the variable
		return ans;
	};
});

app.directive('product',function() {  //custom directive
	var direc={};
	var linkFunction=function(scope,element,attributes)
	{
		scope.img=attributes["img"];  //get the img
		scope.proname=attributes["proname"];  //get productname
		scope.descr=attributes["descr"];  //get deescription
		scope.pri=attributes["pri"];  //get price
		scope.linkd=attributes["linkd"]; //get link
		scope.idd=attributes["idd"];  //get id
	};
	
	direc.restrict='E';
	direc.link=linkFunction;
	direc.template= '<div class="col-md-2 col-xs-6"> <img src={{img}} alt="image" width="150" height="150"/> </div>'; 
	direc.scope={};
	
	return direc;
});

app.controller("myCtrl",['$scope','$http','$window',function($scope,$http,$window)  //controller
{
	$scope.Total=0;
	var uname="";

     $scope.addcart=function(numpo,numpr)  //add to cart function (insert into cart db)
     {
		if(sessionStorage.getItem("uname")!==null){
        var request=$http({
            method:"post",
            url:"insert.php",
            data:{
                ProductID: numpo, //GET THE VALUE THAT NEEDED TO PUT IN DB
                Price: numpr,
				name:sessionStorage.getItem("uname"),
				phone:sessionStorage.getItem("uphone"),
				email:sessionStorage.getItem("uemail"),
            },
            headers:{
                'Content-Type':'application/x-www-form-urlencoded'
            }
        }).success(function(data){alert(data)});  //display the alert box
	
     }
	 else
	 {
		$window.alert("Please Login");  //alert box
	 }
	 }
	 
	$scope.remses=function()
	{
		sessionStorage.clear();  //remove session variable
	}
	
	$scope.addlogin=function(str1,str2,str3)
	{
		sessionStorage.setItem("uname",str1);  //store the variable
		sessionStorage.setItem("uphone",str2);
		sessionStorage.setItem("uemail",str3);
	}

	$scope.ins_d=function()      //insert the cart data into full cart db
	{
		 var request=$http({
            method:"post",
            url:"insertfull.php",
            data:{
                name:sessionStorage.getItem("uname"),
				phone:sessionStorage.getItem("uphone"), //get variable
				email:sessionStorage.getItem("uemail"),
            },
            headers:{
                'Content-Type':'application/x-www-form-urlencoded'
            }
        }).success(function(data){$scope.delete_data()});
		
		  //call delect function
		
	}
	
	//reference
	//https://www.youtube.com/watch?v=O1r_tVntUa4
	$scope.delete_data=function()      //delete data that is in cart table
	{
		$http.post("del.php",{}).success(function(data){
		alert(data)
		})
	}
	
	$scope.addfed=function(num1,num2,str)   //insert feedback into feedback table
	{
		var request=$http({
            method:"post",
            url:"insertfed.php",
            data:{
                range1: num1, //GET THE VALUE THAT NEEDED TO PUT IN DB
                range2: num2,
				description: str,
            },
            headers:{
                'Content-Type':'application/x-www-form-urlencoded'
            }
        }).success(function(data){alert(data)});
	}
	
     $scope.updatedata =function(){ //DISPLAY PRODUCT
				   $http({
											method: "get",
											url:"display.php"
										}).then(function successCallback (response){
											$scope.products = response.data;
										});
				   }
     
	 	
	   $scope.updatecart =function(){ //DISPLAY THE CART
				   var requestlist = $http({
											method: "get",
											url:"second.php",
											data:{
												 name:sessionStorage.getItem("uname"),
				phone:sessionStorage.getItem("uphone"),
				email:sessionStorage.getItem("uemail"),
											}
										}).then(function successCallback (res){
											$scope.carts = res.data;
										});
				   }
	 
	 $scope.getuname=function()
	 {
		 return sessionStorage.getItem("uname");
	 }
	 
	 //reference
	 //https://codereview.stackexchange.com/questions/147113/javascript-get-total-function
	 
	 $scope.getT=function() //GET THE TOTAL PRICE IN THE CART
	 {
		 var total=0;
		 for(var i=0;i<$scope.carts.length;i++) 
		 {
			 total+=parseInt($scope.carts[i].Price); //AS IT WILL BECOME STRING, THEREFORE CHANGE INTO INT BEFORE PERFORM ARITHMETIC FUNCTION
		 }
		 return total;
	 }
	 
	    $scope.submit=function()
    {
        $scope.wasSubmitted=true;           //assign value true if the file is submit
    }
   
}]);

app.config(["$routeProvider",function($routeProvider)		//ng route 
            {
                $routeProvider															
                    .when("/product",{								//link to product.html
                    templateUrl:"product.html",
                    controller:"myCtrl"
                })
                    .when("/cart",{
                    templateUrl:"cart.html",						//link to cart.html
                    controller:"myCtrl"
                })
                .when("/sub",{
                    templateUrl:"rate.html",						//link to rate.html
                    controller:"myCtrl"
                })
				.when("/log",{
                    templateUrl:"login.html",						//link to login.html
                    controller:"myCtrl"
                })
				.when("/homepage",{
						templateUrl:"homepage.html",                //link to homepage
						controller:"myCtrl"
					})
					
					.when("/disclaimer",{
						templateUrl:"disclaimer.html",             //link to disclaimer
						controller:"myCtrl"
					})
					
					.when("/reference",{
						templateUrl:"reference.html",             //link to reference
						controller:"myCtrl"
					})
					
                .otherwise({redirectTo:"/homepage"        //default to homepage 
				});
            }]);