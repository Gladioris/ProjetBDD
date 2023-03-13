<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Stock Managment Web-App - Auth Page</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel='stylesheet' type='text/css' media='screen' href='Projetbdd.css'>
    </head>
    <body>
        <?php
            // Vérification de la connexion
            $errorMessage = "";
            $loggedUser = null;
            if (isset($_POST['username']) && isset($_POST['password'])) {
                $db = new PDO(
                    'mysql:host=localhost;dbname=projetbdd;charset=utf8',
                    'root', 
                    '',
                    [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
                );

                $query = "SELECT * FROM users WHERE username=:username AND password=:password";
                $stmt = $db->prepare($query);
                $stmt->bindParam(":username", $_POST['username']);
                $stmt->bindParam(":password", $_POST['password']);
                $stmt->execute();
                $user = $stmt->fetch();

                if ($user) {
                    $loggedUser = $user['username'];
                    session_start();
                    $_SESSION['username'] = $loggedUser;
                } else {
                    $errorMessage = "Username Or Password is Incorrect";
                }
            }
        ?>
       

        <?php if($loggedUser !== null){ 
            header("Location:Home.php");
            exit();
        }else{
            header("Location:LoginPage.php?login_failed=true");
            exit();
       }?>

    </body>
</html>
