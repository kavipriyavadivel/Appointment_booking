<?php
session_start();
// Assuming you have a database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "appointment_booking";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_SESSION["admin_logged_in"])) {
    $sql = "SELECT roll_no FROM student_info WHERE id = '{$_SESSION['user_id']}'";
    $result = $conn->query($sql);

    if ($result && $result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $studentRollNumber = $row['roll_no'];
    } else {
        echo "No rows found.";
    }
} else {
    header("Location: login_admin.php");
    exit();
}

$sql = "SELECT * FROM appointments WHERE rollnumber = '$studentRollNumber' ORDER BY service,assigned_to, reason, date_time, emergency_level  DESC";
$result = $conn->query($sql);
?>
<!DOCTYPE html>
<html>
<head>
    <title>Appointment History</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
         *{
            font-family: Poppins, sans-serif;
            
        }
        body{
            background-color: white; 
            display: flex;
            margin: 0;
            padding: 0;
            flex-direction: row;
        }
        #sidebar {
            height: 100vh;
            width: 330px;
            color: #fff;
            box-sizing: border-box;
            font-size: 18px;
            line-height: 150%;
            display: flex;
            flex-direction: column;
            border-radius: 0px 20px 20px 0;
            overflow: hidden;
            background-color: white;
        }

        .left-top {
            flex: 0.20;
            background-color: rgba(12, 53, 106, 1);
        }

        .left-bottom {
            flex: 0.85;
            background-color: #30A2FF;
            padding: 30px;
            padding-top: 50px;
        }

        .circle1 {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            margin-top: -120px;
        }

        #content {
            flex-grow: 1;
            padding: 20px;
        }

        #footer {
            text-align: center;
            padding: 10px;
            background-color: #333;
        }

        #sidebar ul {
            list-style-type: none;
            padding: 0;
        }

        #sidebar ul li {
            margin-bottom: 10px;
        }

        #sidebar li {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
            padding: 19px;
            font-size: 17px;
        }

        #sidebar ul li a {
            text-decoration: none;
            color: black;
            display: block;
        }

        .img {
            width: 20%;
            height: 10%;
            padding-right: 20px;

        }
        .container{
            display: flex;
            gap: 10px;
            background-color: rgba(12,53,106,1);
            flex-direction: column;
            height: 100vh;
            align-items: center;
            height: 550px;
            width: 850px;
            border-radius: 15px;
            color: white;
            padding: 10px;
            padding-top: 30px;
        }
        .container1 {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
        }
        .main-content{
            background-color: white; 
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; 
            margin-left: 100px;
        }
        table {
            border-collapse: collapse;
            height: 250px;
            width: 650px;
           display: block;
            
            font-size: 15px;
            text-align: center;
            border-radius: 15px;
            color: black;
            overflow-y: scroll;
            
          
        }

        th,
        td {
           
            text-align: left;
            padding: 8px;
        }

        th {
            background-color:rgba(48, 162, 255, 1) ;
        }
        td{
            background-color: white;
        }
        /* Top Left Rounded Corner for first th */
table tr:first-child th:first-child {
    border-top-left-radius: 15px;
}

/* Top Right Rounded Corner for last th */
table tr:first-child th:last-child {
    border-top-right-radius: 15px;
}

/* Bottom Left Rounded Corner for first td */
table tr:last-child td:first-child {
    border-bottom-left-radius: 15px;
}

/* Bottom Right Rounded Corner for last td */
table tr:last-child td:last-child {
    border-bottom-right-radius: 15px;
}
    .bg-effect{
        background: white;
        height: 100%;
        width:0;
        border-radius: 30px;
        position: absolute;
        left: 0;
        bottom:0;
        z-index: 1;
        transition: 0.5s;
        color: black;
    }
    .btn-text {
    position: relative;
    z-index: 2;
}

button:hover .bg-effect {
    width: 100%;
}
    button:hover{
        border: none;
        color: black;
    }
    button{
        width: 300px;
        padding: 5px 0;
        text-align: center;
        margin: 20px 10px;
        border-radius: 30px;
        font-weight: bold;
        background-color:rgba(48, 162, 255, 1) ;
        color: white;
        cursor: pointer;
        overflow: hidden;
        position: relative;
        border: none;
        font-size: 20px;
    }
    #sidebar ul li a:hover{
        color:white;
        transition: 0.5s;
        cursor: pointer;
    }
    </style>
</head>
<body>
<div class="container1">
        <div id="sidebar">
            <div class="left-top">
            </div>
            <div class="left-bottom">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8V1YRVsyWYm9waoyPrvuW6N69jeXwZ2pXRw&usqp=CAU" class="circle1" align="center">
                <h4>Student Dashboard</h4>
                <ul>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/2636/2636428.png" class="img"><a href="http://localhost/appointment_booking/profile.php">Profile</a></li>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/7322/7322265.png" class="img"><a href="http://localhost/appointment_booking/appointment.php">Book Appointment</a></li>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/2645/2645897.png" class="img"><a href="">Notification</a></li>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/1979/1979288.png" class="img"><a href="cancellation.php">Cancel Appointment</a></li>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/3503/3503786.png" class="img"><a href="http://localhost/appointment_booking/history.php"style="color:white;">History</a></li>
                    <li> <img src="https://cdn-icons-png.flaticon.com/128/3503/3503827.png" class="img"><a href="developstudent.html">Developed by</a></li>
                </ul>
            </div>
        </div>
    <div class="main-content">
    <div class="container">
    <h2>Appointment History</h2>
    <table class="table1">
        <tr>
                <th>Service</th>
                <th>Staff</th>
                <th>Reason</th>
                <th>Date and Time</th>
                <th>Level of Emergency</th>
        </tr>

<?php
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["service"] . " " . $row["status"] . "</td>
                <td>" . $row["assigned_to"] . " " . $row["status"] . "</td>
                <td>" . $row["reason"] . " " . $row["status"] . "</td>
                <td>" . $row["date_time"] . " " . $row["status"] . "</td>
                <td>" . $row["emergency_level"] . " " . $row["status"] . "</td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "No appointments found.";
}
?>

    <br>
    <a href="http://localhost/appointment_booking/appointment.php"><button class="another_appointment"><span class="bg-effect"></span><span class="btn-text">Another Appointment</span></button></a>
    </div>
</div>
</div>
</body>
</html>
