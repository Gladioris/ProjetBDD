<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Stock Managment Web-App</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='Projetbdd.css'>
    <link rel='stylesheet' type='text/css' media='screen' href='Projetbdd.css'>
</head> 
<body>
    <div>
        <?php
            session_start();
            if(!isset($_SESSION['username'])){
                header("Location:LoginPage.php");
                exit();
            }
            $loggedUser = $_SESSION['username'];
        ?>
        
        <h1> Welcome <?php echo $loggedUser ?> on your Stock Managment Web-App !</h1>
        <div class="whiteBoard">
            <h2>Product</h2>
                <form class="searchBar" method="get">
                    <input type="text" name="search" placeholder="Search by Name...">
                    <input type="submit" value=">" class="sendButton">
                    <?php
                        if (isset($_GET['search'])) {
                            echo '<input type="submit" value="X" class="clearButton" name="clear">';
                        }

                        if (isset($_GET['clear'])) {
                            header("Location: " . strtok($_SERVER["REQUEST_URI"], '?'));
                        }
                    ?>
                </form>
            <table id="product-table">
            <thead>
                <tr>
                    <th class="Product"><a href="?orderBy=product_name">Product Name</a></th>
                    <th class='mediaS'><a href="?orderBy=supplier">Supplier</a></th>
                    <th class='media'><a href="?orderBy=date">Date of Last Purchase</a></th>
                    <th class='media'><a href="?orderBy=quantity">Quantity</a></th>
                    <th><a href="?orderBy=price">Unit Price</a></th>
                </tr>
            </thead>
            <tbody>
                    <?php
                    $search = isset($_GET['search']) ? $_GET['search'] : '';
                    $orderBy = isset($_GET['orderBy']) ? $_GET['orderBy'] : 'product_name';
                    // Paramètres de connexion à la base de données
                    $servername = "localhost";
                    $username = "root";
                    $password = "";
                    $dbname = "projetbdd";

                    
                    // Création d'une connexion à la base de données
                    $conn = new mysqli($servername, $username, $password, $dbname);

                    // Vérification de la connexion
                    if (!$conn) {
                        die("Connection failed: " . mysqli_connect_error());
                    }

                    
                    // Si un champ de recherche est saisi, exécuter la requête de recherche, sinon exécuter la requête d'affichage de tous les produits triés
                    if ($search) {
                        $sql = "SELECT * FROM product WHERE product_name LIKE '%$search%' ORDER BY $orderBy";
                    } else {
                        $sql = "SELECT * FROM product ORDER BY $orderBy";
                    }
                
                    // Execute the query and display the results
                        $result = mysqli_query($conn, $sql);
                        if (mysqli_num_rows($result) > 0) {
                            while($row = mysqli_fetch_assoc($result)) {
                                echo "<tr class='clickable-row'>";
                                echo "<td class='Product'>" . utf8_encode($row["product_name"]) . "</td>";
                                echo "<td class='mediaS'>" . utf8_encode($row["Supplier"]) . "</td>";
                                echo "<td class='media dateTime'>" . $row["Date"] . "</td>";
                                echo "<td class='media quantity'>" . utf8_encode($row["Quantity"]) . " pieces</td>";
                                echo "<td class='price'>" . $row["Price"] . "€</td>";
                                echo "<td class='id'>" . $row["product-id"] . "</td>";
                                echo "</tr>";
                            }
                        } else {        
                            echo "0 results";
                        }

                        mysqli_close($conn);
                ?>
            </tbody>
	        </table>
        </div>
    </div>
    
    <!-- Overlay et boite modale du Produit -->
    <div class="overlay"></div>
        <div class="modal">
        <script src="animation.js"></script>
    </div>
    
    
</body>
</html>
