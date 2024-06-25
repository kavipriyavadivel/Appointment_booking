<?php
$host = 'localhost';
$db   = 'appointment_booking';
$user = 'root';
$pass = "";
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

$pdo = new PDO($dsn, $user, $pass, $options);

$message = "";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $startTime = $_POST['start_time'];
    $endTime = $_POST['end_time'];

    // Validate that endTime > startTime + 5 mins
    if (strtotime($endTime) <= strtotime('+5 minutes', strtotime($startTime))) {
        $message = "End time must be at least 5 minutes after start time.";
    } else {
        // Insert into the database
        $stmt = $pdo->prepare('INSERT INTO admin_timings (start_time, end_time) VALUES (?, ?)');
        $stmt->execute([$startTime, $endTime]);
        $message = "Timing saved successfully!";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Timing Setup</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
    <style>
         *{
            font-family: Poppins, sans-serif;
            
        }
        body{
            background-color: white; 
            display: flex;
            margin: 0;
            padding: 0;
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
            font-size: 18px;
        }

        #sidebar ul li a {
            text-decoration: none;
            color: black;
            display: block;
        }

        .img {
            width: 12%;
            height: 4%;
            padding-right: 20px;

        }


        /* Your CSS styles here */
        .container1 {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            /* Other container styles */
        }

        .main-content {
            flex-grow: 1;
            padding: 30px;
            display: flex;
            flex-direction: column;
            gap: 30px;
            width: auto;
            flex: 1;
            /* Main content styles */
        }

        .box-book {
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: powderblue;
        }

        .panel-box {
            background-color: #333;
        }

        .user-icon {
            width: 20px;
            height: 20px;
            margin-right: 10px;
        }
        .container{
            display: flex;
            gap: 10px;
            background-color: rgba(12,53,106,1);
            flex-direction: column;
            height: 100vh;
            align-items: center;
            justify-content: center;
            height: 550px;
            width: 850px;
            border-radius: 15px;
            color: white;
            padding: 10px;
            padding-top: 30px;
        }
        .right-container{
            background-color: white; 
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; 
            margin-left: 100px;
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
        width: 200px;
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
    .circle{
            width:120px;
            height:120px;
            border-radius:50%;
            margin-top: -10%;
        }
    #sidebar ul li a:hover{
        color:white;
        transition: 0.5s;
        cursor: pointer;
    }
    .std-app{
            height: 430px;
            width: 600px;
            color: black;
            background-color: white;
            border: none;
            border-radius:15px;
            padding: 15px;
            border-collapse: collapse;
        }
        input{
            height:30px;
            width: 220px;
            border-radius: 15px;
            border: none;
            background-color: #30A2FF;
        }
        input[type="time"]{
            padding-left: 15px;
        }
        th,
        td {
           
            text-align: center;
            padding: 8px;
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
                <h2>Admin Dashboard</h2>
                <ul>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/2636/2636428.png" class="img"><a href="http://localhost/appointment_booking/admin_appointments.php">Alot Booking</a></li>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/2636/2636428.png" class="img"><a href="http://localhost/appointment_booking/schedule.php" style="color:white;"`>Set Availability</a></li>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/2645/2645897.png" class="img"><a href="">Notification</a></li>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/1979/1979288.png" class="img"><a href="cancellation.php">Cancellation</a></li>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/3503/3503786.png" class="img"><a href="">History</a></li>
                    
                    <li> <img src="https://cdn-icons-png.flaticon.com/128/3503/3503827.png" class="img"><a href="developed-by.html">Developed by</a></li>
                </ul>
            </div> 
        </div>
        
        <div class="right-container" align="center"> 
        <div class="container">
        <div class="content">
        <center><table class="std-app">
<form action="schedule.php" method="post">
<tr><td colspan="2" align="center"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8V1YRVsyWYm9waoyPrvuW6N69jeXwZ2pXRw&usqp=CAU" class="circle" align="center"></td></tr>
<tr align="center" style="font-size: 20px;"><td colspan="2">SET AVAILABILE TIME</td></tr>
    <tr><td>Start Time: </td>
    <td><input type="time" name="start_time" required></td></tr>
    <tr><td>End Time: </td>
    <td><input type="time" name="end_time" required></td></tr>
    <tr><td colspan="2"align="center"><input type="submit" value="Set Timing"></td></tr>
</form>
</table></center>
<p><?= $message ?></p>
        </div>
        </div>
        </div>
</body>
</html>
