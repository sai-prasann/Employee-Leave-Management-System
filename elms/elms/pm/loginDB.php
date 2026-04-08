<?php
session_start();
include('includes/config.php');
$uname=$_POST['username'];
$password=$_POST['password'];
echo $uname;
echo $password;

$sql ="SELECT Emailid,Password FROM tblemployees WHERE Emailid=:uname and Password=:password";
$query= $dbh -> prepare($sql);
$query-> bindParam(':uname', $uname, PDO::PARAM_STR);
$query-> bindParam(':password', $password, PDO::PARAM_STR);
$query-> execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
$_SESSION['pmlogin']=$_POST['username'];
$_SESSION['pmid']=$_POST['id'];
echo "<script type='text/javascript'> document.location = 'dashboard.php'; </script>";
} else{
  
  echo "Not Connected";
  
}



?>