<?php
// Connect to the database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "appointment_booking";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve the selected date from the form


// Retrieve the data from the timetable for the selected date and later
$sql = "SELECT * FROM timetable WHERE (monday = 'NIL' OR tuesday = 'NIL' OR wednesday = 'NIL' OR thursday = 'NIL' OR friday = 'NIL') ";
$result = $conn->query($sql);

// Check for "NIL" time slots and display them in a dropdown list
if ($result->num_rows > 0) {
    echo "<select name='time_slot'>";
    while ($row = $result->fetch_assoc()) {
        if ($row["monday"] === "NIL" && strpos($row["time"], "am") !== false) {
            echo "<option value='" . $row["time"] . "'>" . $row["time"] . " (Monday)</option>";
        }
        if ($row["tuesday"] === "NIL" && strpos($row["time"], "am") !== false) {
            echo "<option value='" . $row["time"] . "'>" . $row["time"] . " (Tuesday)</option>";
        }
        if ($row["wednesday"] === "NIL" && strpos($row["time"], "am") !== false) {
            echo "<option value='" . $row["time"] . "'>" . $row["time"] . " (Wednesday)</option>";
        }
        if ($row["thursday"] === "NIL" && strpos($row["time"], "am") !== false) {
            echo "<option value='" . $row["time"] . "'>" . $row["time"] . " (Thursday)</option>";
        }
        if ($row["friday"] === "NIL" && strpos($row["time"], "am") !== false) {
            echo "<option value='" . $row["time"] . "'>" . $row["time"] . " (Friday)</option>";
        }
    }
    echo "</select>";
} else {
    echo "No available time slots";
}

// Close the database connection
$conn->close();