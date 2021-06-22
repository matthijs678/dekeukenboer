<?php

// Check if name, email and message are given
if ( ! empty($_POST['name']) && ! empty($_POST['email']) && ! empty($_POST['message'])) {

    // TODO: Check if e-mail is valid (now always true) by using laminas-validator package: https://packagist.org/packages/laminas/laminas-validator
    if (true) {

        // When true, add message to table messages (you can find the sql in keukenboer.sql)
        $sql = "INSERT INTO message(name, email, message) VALUES (?, ?, ?)";
        $mysqli = new mysqli('localhost', 'root', 'root', 'keukenboer', 8888);
        $stmt = $mysqli->prepare($sql);
        $stmt->bind_param("sss", $_POST['name'],$_POST['email'],$_POST['message']);
        if ($stmt->execute()){
            echo "Dank voor uw bericht";
        }
    }
}

header("Refresh:2; url=index.php");

