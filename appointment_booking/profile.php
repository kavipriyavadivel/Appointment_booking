<?php
session_start();

$connection = mysqli_connect("localhost", "root", "", "appointment_booking");

if (!$connection) {
    die("Database connection failed: " . mysqli_connect_error());
}

if (!isset($_SESSION['user_id'])) {
    header("Location: login_admin.php");
    exit();
}

$student_id = $_SESSION['user_id'];

$query = "SELECT * FROM student_info WHERE id = '$student_id'";
$result = mysqli_query($connection, $query);

if (!$result) {
    die("Database query failed: " . mysqli_error($connection));
}

$student = mysqli_fetch_assoc($result);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            font-size: 17px;
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
    .container {
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        /* Other container styles */
    }
    table{
        height:400px;
        width: 800px;
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
        .main-content{
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
                <h2>Student Dashboard</h2>
                <ul>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/2636/2636428.png" class="img"><a href="http://localhost/appointment_booking/profile.php" style="color:white;">Profile</a></li>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/7322/7322265.png" class="img"><a href="http://localhost/appointment_booking/appointment.php">Book Appointment</a></li>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/2645/2645897.png" class="img"><a href="">Notification</a></li>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/1979/1979288.png" class="img"><a href="cancellation.php">Cancel Appointment</a></li>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/3503/3503786.png" class="img"><a href="http://localhost/appointment_booking/history.php">History</a></li>
                    <li> <img src="https://cdn-icons-png.flaticon.com/128/3503/3503827.png" class="img"><a href="developstudent.html">Developed by</a></li>
                </ul>
            </div>
        </div>
        
        <div class="main-content">
        <div class="container">
            <h1>Welcome, <?php echo $student['username']; ?></h1>
            <center><table>
            <tr><td><strong>Username</strong></td> <td><?php echo $student['username']; ?></td></tr>
            <tr><td><strong>Roll Number</strong></td> <td><?php echo $student['roll_no']; ?></td></tr>
            <tr><td><strong>Email</strong></td> <td> <?php echo $student['email']; ?></td></tr>
            <tr><td><strong>Phone Number</strong></td> <td><?php echo $student['phone_no']; ?></td></tr>
            <tr><td><strong>Department</strong></td> <td><?php echo $student['department']; ?></td></tr>
            <tr><td><strong>Year</strong></td> <td> <?php echo $student['year']; ?></td></tr>
            <tr><td><strong>Residence</strong></td> <td> <?php echo $student['residence']; ?></td></tr>
            <tr><td colspan="2"><div>
            <a href="homepage.html"><button class="logout"><span class="bg-effect"></span><span class="btn-text">Logout</span></button></a>
        </div></td></tr>
            </table></center>
        
        </div>
        </div>
    </div>

</body>

</html>

