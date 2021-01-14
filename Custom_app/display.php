<?php
$conn=mysqli_connect("localhost","root","","capp");

$output=array();
$select="SELECT * FROM product";

$result=mysqli_query($conn,$select);

    while($row=mysqli_fetch_assoc($result))
    {
        $output[]=array(
        "ProductID"=>$row['ProductID'],
        "ProductName"=>$row['ProductName'],
        "Description"=>$row['Description'],
        "Img"=>$row['Img'],
        "price"=>$row['price'],
        "morelink"=>$row['morelink'],
        "category"=>$row['category']
    );
    }
echo json_encode($output);
exit;
?>