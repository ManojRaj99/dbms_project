<html>
    <head>
    <link rel="stylesheet"
     href="tablestyle.css">
    </head>
<body>
  <table border="3" cellpadding="10px" cellspacing=10>
      <tr>
        <th>name</th>
        <th>phoneno</th>
      </tr>
     <tr> 
<?php
  error_reporting(0);
  $servername = "localhost";
  $username = "root";
  $password = "";
  $databasename = "c2";
  
  // CREATE CONNECTION
  $conn = new mysqli($servername,
    $username, $password, $databasename);
  
  // GET CONNECTION ERRORS
  if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
  }
  $query= "select name,phoneno from user ;";
  
  
  $result = $conn->query($query);
  
            if ($result->num_rows > 0) 
            {
                // OUTPUT DATA OF EACH ROW
                while($row = $result->fetch_assoc())
                {
                    echo "<tr>
                        <td>".$row["name"]. "</td>
                        <td>".$row["phoneno"]. "</td>
                         </tr>";
                       
                }
            } 
            else {
                echo "0 results";
            }
  //           $query= "select name,phonenumber from orders where name!=\"Total\"&&name!=\" \";";
  // $result = $conn->query($query);
  //           $row = $result->fetch_assoc();
  //         echo $row["name"];
  //         echo $row["phonenumber"];
  //         $row = $result->fetch_assoc();
  //         echo $row["name"];
  //         echo $row["phonenumber"];
  //         echo "hello";
   $conn->close();
?>
  </tr>
  </table>
</body>
</html>