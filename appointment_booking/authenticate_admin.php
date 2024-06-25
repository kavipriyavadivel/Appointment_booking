<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    // Check credentials against the database
    $servername = "localhost";
    $dbUsername = "root";
    $dbPassword = "";
    $dbName = "appointment_booking";

    $conn = new mysqli($servername, $dbUsername, $dbPassword, $dbName);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Using prepared statement
    $sql = "SELECT * FROM admins WHERE username = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
        if ($password == $row["password"]) {
            $_SESSION["admin_logged_in"] = true;
            header("Location: admin_appointments.php");
        } else {
            echo "Invalid password.";
        }
    } else {
        echo "Admin not found.";
    }

    $stmt->close();
    $conn->close();
}
