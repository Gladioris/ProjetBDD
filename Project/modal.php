<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Stock Managment Web-App</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='Projetbdd.css'>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head> 
<body>
    <h2><?php $id = $_GET['i'];
        echo $id;

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
        // Requête SQL
        $sql = "SELECT date, stock FROM stocks WHERE product_id='$id'";
        
        // Exécution de la requête SQL
        $result = mysqli_query($conn, $sql);

        // Vérification des erreurs de requête
        if (!$result) {
            die("Erreur de requête : " . mysqli_error($conn));
        }

        // Stockage des résultats dans un tableau
        $data = mysqli_fetch_all($result, MYSQLI_ASSOC);

    ?></h2>
    
    <div id="chart_div"><?php  echo $id;?></div>
    
    
</body>
</html> 