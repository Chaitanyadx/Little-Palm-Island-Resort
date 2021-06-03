<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="styles/contact.css">
	<title>Contact Us</title>
</head>

<body>
    <?php
        require 'header.html';
    ?>
    <script type="text/javascript" src="script/applybackground.js"></script>
    <div id= "text">Contact US</div>
    <div id = "form">
        <form action = "<?php $_PHP_SELF ?>" method = "POST">
            <label for = "name">Name* :</label>
            <input type = "text" name = "name" id = "name" required/>
            <br/>
            <label for = "email">Email* :</label>
            <input type = "email" name = "email" id = "email" required/>
            <br/>
            <label for = "phone">Phone* :</label>
            <input type = "number" name = "phone" id = "phone" required/>
            <br/>
            <label for = "message">Message* :</label>
            <textarea type = "textarea" name = "message" id = "message" rows="5" cols="40" required></textarea>
            <br/>
            <button type = "submit" name = "submit">Submit</button>
        </form>
    </div>
	<?php
        require 'footer.html';
    ?>
</body>

</html>

<?php 
    if(isset($_POST['submit'])){
        $conn = new mysqli("localhost", "root","", "hotelcs", "contact");
        $query = "insert into feedback values('".$_POST['name']."','"
                                                .$_POST['phone']."','"
                                                .$_POST['email']."','"
                                                .$_POST['message']."');";
        $result = mysqli_query($conn,$query);
        //mysqli::__construct ([ string $host = ini_get("mysqli.default_host") [,string $username = ini_get("mysqli.default_user") [, string $passwd = ini_get("mysqli.default_pw") [, string $dbname = "" [, int $port = ini_get("mysqli.default_port") [, string $socket = ini_get("mysqli.default_socket") ]]]]]] )


    }
?>