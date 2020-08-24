<?php
if ($_POST) {

    $keys = array("marka", "model", "rok");

    $dbcols = '`'.join('`, `', $keys).'`';
    $content = ':'.join(', :', $keys);

    $data = array();
    foreach ($keys as $k)
    {
        $data[$k] =  $_POST[$k];
    }

    $pdo = new PDO('mysql:host=localhost;dbname=test', 'root', '');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "INSERT INTO samochody ($dbcols) VALUES ($content)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute($data);

    echo "<p id='msg' style='color:red; font-weight: bold; text-align:center;'>SAMOCHÓD DODANY DO BAZY!</p>";

}

else {

?>

<html>

<head>
	<title>Przykład 8</title>
	<meta charset="utf-8">
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
     crossorigin="anonymous"></script>
    <script>
        $(document).ready(function() {
            $('#submit').click(function() {
                var marka = $('#marka').val();
                var model = $('#model').val();
                var rok = $('#rok').val();

                $.ajax({
                    type: "POST",
                    cache: false,       
                    url: 'submit.php',
                    data: {'marka='+marka, 'model='+model, 'rok='+rok},
                    success: function(data) {
                        $('#msg').show();
                    }
                });
            });
        });
    </script>
    </head>
    <body>
        <form action="submit.php" method="POST">
            <label for="marka">Marka</label>
                <input  type="text"name="marka" id="marka" /><br />
            <label for="model">Model</label>
                <input  type="text" name="model" id="model" /><br />
            <label for="rok">Rok</label>
                <input  type="text" name="rok" id="rok" /><br />
                <input  type="submit" value="Dodaj" id="submit" /><br />
            </form>
    </body>
        


<?php
    ;}
?>