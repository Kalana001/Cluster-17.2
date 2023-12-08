<?php
$reference_number = uniqid();


if (isset($_POST['submit'])) {
    // get the user input
    //$input = $_POST['input'];
    //$id=$_POST['id'];
    $sender_name = $_POST['sender_name'];
	$sender_address = $_POST['sender_address'];
    $sender_contact = $_POST['sender_contact'];
    $recipient_name = $_POST['recipient_name'];
    $recipient_address = $_POST['recipient_address'];
    $recipient_contact = $_POST['recipient_contact'];
    $weight = $_POST['weight'];
    $height = $_POST['height'];
    $width = $_POST['width'];
    $length=$_POST['length'];

    $db = mysqli_connect('localhost', 'root', '', 'cms_db');

    // create a query to insert the input into the table
   $query = "INSERT INTO parcels ( `reference_number`, `sender_name`, `sender_address`, `sender_contact`, `recipient_name`,
   `recipient_address`, `recipient_contact`, `type`, `from_branch_id`, `to_branch_id`, `weight`, `height`, `width`, `length`, 
    `price`, `status`)VALUES('$reference_number','$sender_name','$sender_address','$sender_contact','$recipient_name','$recipient_address',
    '$recipient_contact','1', '10500', '10500', '$weight', '$height', '$width', '$length','10','1')";

    $result = mysqli_query($db, $query);
   
    if ($result) {
        header('Location: form.php?success=1');
      
    } else {
        echo "An error occurred while adding the input to the database.";
    }}


?>
