<html>
<head><title>Add</title></head>

<body>

    <?php

        $conn = mysqli_connect('db', 'user', 'pass', "myDb");
        $query = "INSERT INTO `Campagne`(`nome`, `stato`, `ruolo`) VALUES ('".$_GET['nome']."', 'pausa', 'giocatore')";
        $result = mysqli_query($conn, $query);
        if($result==TRUE){
            echo "<p align=center> Vuoi creare la campagna ".$_GET['nome']." con: <ul>";

            $id_c = mysqli_fetch_assoc(mysqli_query($conn, "SELECT id FROM Campagne WHERE nome='".$_GET['nome']."'"));
            $name = $_GET['player'];
            foreach( $name as $player){
                $id_p = mysqli_fetch_assoc(mysqli_query($conn, "SELECT id FROM Giocatori WHERE nome='".$player."'"));
                $q = "INSERT INTO `Gioca`(`giocatore`, `campagna`) VALUES (".$id['id'].",".$id_c['id'].")";
                $result = mysqli_query($conn, $q);

                echo '<li>'.$player.'</li>';
            }

            echo '</ul> </p>';
        }else{
            echo "qualcosa non va";
        }
        
        mysqli_close($conn);
    ?>

</body>

</html>
