<html>
<head><title>Results</title></head>

<body>

    <?php

        $conn = mysqli_connect('db', 'user', 'pass', "myDb");
        $query = "SELECT Giocatori.nome, Giocatori.classe FROM Giocatori, Gioca, Campagne WHERE Campagne.nome='".$_GET['campagna']."'AND Campagne.id=Gioca.campagna AND Giocatori.id=Gioca.giocatore";
        $result = mysqli_query($conn, $query);

        echo '<table align=center border=2>';
        echo '<tr align=center ><td>nome</td><td>classe</td></tr>';
        while($row = mysqli_fetch_assoc($result)){
            echo '<tr>';
                echo '<td>'.$row["nome"].' </td> <td>'.$row["classe"].'</td>';
                // echo '<td>'.$row["giocatore"].' </td> <td>'.$row["campagna"].'</td>';
            echo '</tr>';
        }

        echo '</table>';


        mysqli_close($conn);
    ?>

</body>

</html>
