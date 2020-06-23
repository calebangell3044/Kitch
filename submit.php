<head>
<style>
table {
		font-family: arial, sans-serif;
		border-collapse: collapse;
		width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<?php
$x=$_POST['firstname'];
$y=$_POST['lastname'];
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db1";

//create connection
$conn = new mysqli($servername, $username, $password, $dbname);

//check connection
if ($conn->connect_error) {
	die("Connection Failed: " . $conn->connect_error);
}
echo "Connected Successfully";
$sql = "INSERT INTO `user` (`fname`, `lname`) VALUES ('$x','$y')";

if ($conn->query($sql) === TRUE) {
	echo "New record created successfully";
} else {
	echo "Error: " . $sql . "<br>" . $conn->error;
}
$sql = "SELECT id, fname, lname FROM user";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
	//output data of each row
echo "<table>";
	while($row = $result->fetch_assoc()) {
		echo "<tr><td> id: " . $row["id"]. " </td><td> Name: " . $row["fname"]. " " . $row["lname"]. "</td></tr>";
	}
echo "</table>";
} else {
	echo "0 results";
}

$conn->close();
?>