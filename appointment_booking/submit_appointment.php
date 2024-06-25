<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "appointment_booking";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch data from the form
$name = $_POST['name'];
$email = $_POST['email'];
$rollnumber = $_POST['rollnumber'];
$phone = $_POST['phone'];
$service = $_POST['service'];
$assigned_to = $_POST['assigned_to'];
$time = $_POST['time_slot'];
$reason = $_POST['reason'];
$date_time = $_POST['date_time'];
$emergency_level = $_POST['emergency_level'];

// Insert data into appointments table
$sql = "INSERT INTO appointments (name, email, rollnumber, phone, service, assigned_to,time_slot, reason, date_time,emergency_level) 
        VALUES ('$name', '$email', '$rollnumber', '$phone', '$service', '$assigned_to','$time', '$reason', '$date_time', '$emergency_level')";


// ... Your code to process form data and insert into the database ...

if ($conn->query($sql) === true) {
    // Redirect to confirmation page after successful booking
    header("Location: confirmation.html");
    exit(); // Make sure to exit after the redirection
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
