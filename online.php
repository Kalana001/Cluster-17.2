<?php

// check if the form has been submitted
if (isset($_POST['submit'])) {
    // get the user input
    //$input = $_POST['input'];
    $id=$_POST['id'];
    $sender_name = $_POST['sender_name'];
	$sender_address = $_POST['sender_address'];
    $sender_contact = $_POST['sender_contact'];
    $recipient_name = $_POST['recipient_name'];
    $recipient_address = $_POST['recipient_address'];
    $recipient_contact = $_POST['recipient_contact'];
    $type = $_POST['type'];    
	$from_branch_id = $_POST['from_branch_id'];
	$to_branch_id = $_POST['to_branch_id'];
    $weight = $_POST['weight'];
    $height = $_POST['height'];
    $width = $_POST['width'];
    $length=$_POST['length'];
    $price = $_POST['price'];
    $status = $_POST['status'];
    $date_created = $_POST['date_created'];
    $reference_number=$_POST['reference_number'];
    // connect to the database
    $db = mysqli_connect('localhost', 'root', '', 'cms_db');

    // create a query to insert the input into the table
    $query = "INSERT INTO parcels (`id`, `reference_number`, `sender_name`, `sender_address`, `sender_contact`, `recipient_name`, 
    `recipient_address`, `recipient_contact`, `type`, `from_branch_id`, `to_branch_id`, `weight`, `height`, `width`, `length`, `price`
    , `status`, `date_created`)VALUES('$id','$reference_number','$sender_name','$sender_address','$sender_contact','$recipient_name',
    '$recipient_address','$recipient_contact','$type', '$from_branch_id', '$to_branch_id', '$weight', '$height', '$width', '$length',
     '$price', '$status', '$date_created')";

    // execute the query 
    $result = mysqli_query($db, $query);

    // check if the query was successful
    if ($result) {
        echo "The input was added to the database successfully.";
    } else {
        echo "An error occurred while adding the input to the database.";
    }
}

?>

<!-- create the user input form -->
<form method="post" action="">
    <label for="sender_name">sender name</label><br>
    <input type="text" id="input" name="sender_name"><br><br>

    <label for="sender_address">sender address</label><br>
    <input type="text" id="input" name="sender_address"><br><br>

    <label for="sender_contact">sender contact</label><br>
    <input type="text" id="input" name="sender_contact"><br><br>
    
    <label for="recipient_name">recipient_name</label><br>
    <input type="text" id="input" name="recipient_name"><br><br>

    <label for="recipient_address">recipient_address</label><br>
    <input type="text" id="input" name="recipient_address"><br><br>

    <label for="recipient_contact">recipient_contact</label><br>
    <input type="text" id="input" name="recipient_contact"><br><br>

    <label for="type">type</label><br>
    <input type="text" id="input" name="type"><br><br>

    <label for="from_branch_id">from_branch_id</label><br>
    <input type="text" id="input" name="from_branch_id"><br><br>

    <label for="to_branch_id">to_branch_id</label><br>
    <input type="text" id="input" name="to_branch_id"><br><br>

    <label for="weight">weight</label><br>
    <input type="text" id="input" name="weight"><br><br>

    <label for="height">height</label><br>
    <input type="text" id="input" name="height"><br><br>

    <label for="length">length</label><br>
    <input type="text" id="input" name="length"><br><br>

    <label for="width">width</label><br>
    <input type="text" id="input" name="width"><br><br>

    <label for="price">price</label><br>
    <input type="text" id="input" name="price"><br><br>
    
    <label for="id">id</label><br>
    <input type="text" id="input" name="id"><br><br>

    <label for="status">status</label><br>
    <input type="text" id="input" name="status"><br><br>

    <label for="date_created">date_created</label><br>
    <input type="date" id="input" name="date_created"><br><br>

    <label for="reference_number">reference_number</label><br>
    <input type="text" id="input" name="reference_number"><br><br>

    

    <input type="submit" name="submit" value="Submit">
</form>

