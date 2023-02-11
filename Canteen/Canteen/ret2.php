
 <html>
  <head>
    <h3>Your item billing </h3>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>
      <body>
        <table class="table">
          <tr>
            <th>
              User Name
            </th>
            <th>
              PhoneNo
            </th>
            <th>
                fooditems
            </th>
            <th>
              quantity
            </th>
            <th>
              cost
            </th>
            <th>
              subtotal
            </th>
          </tr>
          <tr>
            <?php
              
              $servername = "localhost";
              $username = "root";
              $password = "";
              $databasename = "canteen";
  
            // CREATE CONNECTION
              $conn = new mysqli($servername,
            $username, $password, $databasename);
    
            $query= "SELECT * FROM orders";
            $result = $conn->query($query);
            if ($result->num_rows > 0) 
            {
                // OUTPUT DATA OF EACH ROW
                if($row = $result->fetch_assoc()){
                do{
                    echo "
                    <tr>
                      <td>" . $row["name"]. "</td>
                      <td>" . $row["phonenumber"]. "</td>
                      <td>" . $row["fooditems"]. "</td>
                      <td>" . $row["quantity"]." </td>
                      <td>"  . $row["cost"]. "</td>
                      <td>" . $row["subtotal"]. "</td>
                        </tr>";
                        $row = $result->fetch_assoc();
                }while(!$row["name"]);
            }
            } 
            else {
                echo "0 results";
            }
            
                ?>
          </tr>
  </table>
  </body>
    </html>
