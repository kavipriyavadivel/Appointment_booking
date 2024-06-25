<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "appointment_booking";

$connection = new mysqli($servername, $username, $password, $database);

if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}

$faculty_username = $_GET['faculty'];

function getBookedSlots($faculty_username, $connection) {
    $query = "SELECT start_time, end_time FROM booked_slots WHERE faculty_username = ?";
    $stmt = $connection->prepare($query);
    $stmt->bind_param("s", $faculty_username);
    $stmt->execute();
    $result = $stmt->get_result();
    $booked_slots = [];
    while ($row = $result->fetch_assoc()) {
        $booked_slots[] = $row;
    }
    return $booked_slots;
}

$bookedSlots = getBookedSlots($faculty_username, $connection);
echo json_encode($bookedSlots);
?>
<?php
header('Content-Type: application/json');
$faculty = $_GET['faculty'];

// Fetch data from your database based on the faculty
// For simplicity, we are using a hard-coded array. Replace with actual DB logic.
$bookedSlots = [
    ["start_time" => "10:00", "end_time" => "10:10"],
    // ... other booked slots
];

echo json_encode($bookedSlots);
?>

