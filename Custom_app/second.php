<?php

session_start();

//connection
$conn=mysqli_connect("localhost","root","","capp");
//$namee=$requestlist->name;
$output=array();

//select data with condition
$select="SELECT c.ItemNo, c.ProductID, c.Price, p.ProductName FROM cart c inner join product p on c.ProductID=p.ProductID where name='$_SESSION[namename]' and email='$_SESSION[emailemail]' and phone='$_SESSION[phonephone]'";
//if no login no execute
if(isset($_SESSION['namename']))
{$result=mysqli_query($conn,$select);
}
    while($row=mysqli_fetch_assoc($result))
    {
        $output[]=array(
        "ItemNo"=>$row['ItemNo'],
        "ProductID"=>$row['ProductID'],
        "Price"=>$row['Price'],
        
		"ProductName"=>$row['ProductName']
    );
    }
echo json_encode($output);
exit;
?>