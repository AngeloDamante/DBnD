<html>
<head><title>Results</title></head>

<body>

    <?php

    $conn = mysqli_connect('db', 'user', 'pass', "myDb");
    $query = 'SELECT * FROM Giocatori WHERE campagna='.$_GET['campagna'];
    $result = mysqli_query($conn, $query);

    echo '<table align=center border=2>';
    echo '<tr align=center ><td>nome</td><td>classe</td></tr>';
    while($row = mysqli_fetch_assoc($result)){
        echo '<tr>';
            echo '<td>'.$row["nome"].' </td> <td>'.$row["classe"].'</td>';
        echo '</tr>';
    }

    echo '</table>';




    mysqli_close($conn);
    ?>

</body>

</html>
