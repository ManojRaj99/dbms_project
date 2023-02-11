
 <html>
  <head>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>
      <body>
        <table class="table">
        <tr>
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
              $databasename = "c2";
  
            // CREATE CONNECTION
              $conn = new mysqli($servername,
            $username, $password, $databasename);
          
            $query= "SELECT uitmname,qty,cost,subtotal FROM bill b,itemlist i WHERE b.uitmname=i.itmname ";
            $result = $conn->query($query);
            // $rowcount = mysqli_num_rows( $result );
            // echo $rowcount;
            // echo $result->num_rows;
            if ($result->num_rows > 0) 
            {
                // OUTPUT DATA OF EACH ROW
                while($row = $result->fetch_assoc())
                {
                  echo "
                  <tr>
                    <td>" . $row["uitmname"]. "</td>
                    <td>" . $row["qty"]." </td>
                    <td>" . $row["cost"]." </td>
                    <td>" . $row["subtotal"]. "</td>
                      </tr>";
                }
            } 
            else {
                echo "0 results";
            }
            // $query= "SELECT * FROM orders";
            // $result = $conn->query($query);
            //         $itm=$result->fetch_assoc();
            //           echo $itm["name"];
            //           $itm=$result->fetch_assoc();
            //           echo $itm["name"];
            //           $itm=$result->fetch_assoc();
            //           echo $itm["name"];
                    ?>
          </tr>
  </table>
  </body>
    </html>
