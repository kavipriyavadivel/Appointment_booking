<?php
// Establish database connection (replace with your credentials)
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "appointment_booking";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get appointment ID and status from the form data
$appointment_id = $_POST['appointment_id'];
$status = $_POST['status'];

// Update the appointment status in the database
$query = "UPDATE appointments SET status = ? WHERE id = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("si", $status, $appointment_id);

if ($stmt->execute()) {
    // Appointment status updated successfully
    if ($status == 'Accepted') {
        echo '<script>alert("Appointment has been accepted.");</script>';
    } elseif ($status == 'Denied') {
        echo '<script>alert("Appointment has been denied.");</script>';
    }
} else {
    echo '<script>alert("Error updating appointment status.");</script>';
}

// Close the database connection
$stmt->close();
$conn->close();
?>

<script>
    // Redirect back to admin_appointments.php after showing the alert
    setTimeout(function() {
        window.location.href = 'admin_appointments.php';
    }, 1000); // Redirect after 1 second (adjust as needed)
</script>