<?php
session_start();
include 'db_conn.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $query = "SELECT * FROM login WHERE username = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
        if ($password === $row["password"]) {
            // Successful login
            $_SESSION["username"] = $username;
            header("Location: appointment.php");
            exit();
        } else {
            echo "Invalid password";
        }
    } else {
        echo "Username not found";
    }

    $stmt->close();
    $conn->close();
}
