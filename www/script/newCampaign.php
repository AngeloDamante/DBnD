<html>
    <head><title> New Campaign </title></head>
    <body>
        <div align="center"> <h2> Seleziona i personaggi che faranno parte della nuova campagna </h2></div>
        
        <?php
            $conn = mysqli_connect('db', 'user', 'pass', "myDb");
            $query = "SELECT * FROM Giocatori";
            $result = mysqli_query($conn, $query);

            if($result==TRUE){
                echo '<form action=add_campaign.php method=GET> <table align=center border=2>';
                echo '<tr align=center ><td>nome</td><td>Seleziona</td></tr>';

                while($row = mysqli_fetch_assoc($result)){
                    echo '<tr align=center>';
                        echo '<td>'.$row["nome"].'<br>'.$row["classe"].'</td>';
                        echo '<td> <input type=checkbox name=player[] value='.$row["nome"].'> </td>';
                    echo '</tr>';
                }

                echo '<tr align=center> <td colspan=2> Nome: <input type=text name=nome> </td> </tr>';
                echo '<tr align=center> <td colspan=2> <input type=submit value=invia> </td> </tr>';
                echo '</table> </form>';
            }

            mysqli_close($conn);
        ?>
    </body>
</html>