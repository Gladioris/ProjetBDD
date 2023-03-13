<!DOCTYPE html>
<html>
    <!-- https://youtube.com/shorts/SlBOpNLFUC0?feature=share -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Stock Managment Web-App Login</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel='stylesheet' type='text/css' media='screen' href='Projetbdd.css'>
    </head>
    <body>
        <div>
        <?php
            $users = [['username' => 'user1', 'password' => 'password1']];

                // Validation du formulaire
            if (isset($_POST['username']) && isset($_POST['password'])) {
                foreach ($users as $user) {
                    if ($user['username'] === $_POST['username'] && $user['password'] === $_POST['password']) {
                        $loggedUser = $user['username'];
                        break;
                    }
                }
            }
        ?>


        <?php
            try {
                $db = new PDO('mysql:host=localhost;dbname=projetbdd;charset=utf8', 'root', '');
            }
            catch (Exception $e){
                die('Erreur : ' . $e->getMessage());
            }
        ?>
        </div>
        
            <!-- Display un message d'erreur -->
        <?php if(isset($_GET['login_failed']) && $_GET['login_failed'] === 'true'): ?>
            <div class="error">Username or password is incorrect</div>
        <?php endif; ?>

        <div class="center loginFormDiv">
            <h1>Log In</h1>

            <form class="formLogin" action="authentification.php" method="post">
                <div class="Username">
                <label>UserName</label>
                    <div class="box-wrapper">
                        <input type="text" name="username" class="box" />
                    </div>
                </div>

                <div class="Password">
                    <label>Password</label>
                    <div class="box-wrapper">
                        <input type="password" name="password" class="box" />
                    </div>
                </div>
                <input type="submit" value="Login" class="submit" />
            </form>
        </div>

    </body>
</html>
