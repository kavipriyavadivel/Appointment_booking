<!DOCTYPE html>
<html>

<head>
    <title>Appointment Booking</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
    <style>
        * {
            font-family: Poppins, sans-serif;

        }

        body {
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

        .std-app {
            height: 530px;
            width: 700px;
            color: white;
            background-color: rgba(12, 53, 106, 1);
            border: none;
            border-radius: 15px;
            padding: 20px;
        }

        input {
            height: 30px;
            width: 220px;
            border-radius: 15px;
            border: none;
        }

        select {
            height: 30px;
            width: 240px;
            border-radius: 15px;
            border: none;
        }

        input[type="text"],
        input[type="email"],
        input[type="datetime-local"],
        ::placeholder {
            font-size: 15px;
            padding-left: 15px;
        }

        .submit {
            background-color: rgba(48, 162, 255, 1);
            height: 30px;
            width: 250px;
            border-radius: 15px;
            color: white;
            font-size: 20px;
        }

        .circle {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-top: -55px;
        }

        .main-content {
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin-left: 150px;
        }

        #sidebar ul li a:hover {
            color: white;
            transition: 0.5s;
            cursor: pointer;
        }
    </style>
    <script type="text/javascript"
  src="https://cdn.jsdelivr.net/npm/@emailjs/browser@4/dist/email.min.js"></script>

<script type="text/javascript">
  emailjs.init('TkI2jeB0ox49F_GGQ')
</script>
<script>
    function sendMail(){
        var params = {
            from_name : document.getElementById("name").value,
            roll : document.getElementById("rollnumber").value,
            stu_Email_id : document.getElementById("email").value,
            time : document.getElementById("date_time").value,
            emer : document.getElementById("emergency_level").value
        }
        emailjs.send("service_ss33y9y","template_kkcvrur",params).then(function(res){
            alert("Success!" + res.status);
        })
    }
</script>
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
                    <li><img src="https://cdn-icons-png.flaticon.com/128/2636/2636428.png" class="img"><a href="http://localhost/appointment_booking/profile.php">Profile</a></li>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/7322/7322265.png" class="img"><a href="http://localhost/appointment_booking/appointment.html" style="color:white;">Book Appointment</a></li>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/2645/2645897.png" class="img"><a href="">Notification</a></li>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/1979/1979288.png" class="img"><a href="cancellation.php">Cancel Appointment</a></li>
                    <li><img src="https://cdn-icons-png.flaticon.com/128/3503/3503786.png" class="img"><a href="http://localhost/appointment_booking/history.php">History</a></li>
                    <li> <img src="https://cdn-icons-png.flaticon.com/128/3503/3503827.png" class="img"><a href="developstudent.html">Developed by</a></li>
                </ul>
            </div>
        </div>
        <div class="main-content">
            <center>
                <table class="std-app">
                    <form action="submit_appointment.php" method="post">
                        <tr>
                            <td colspan="2" align="center"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8V1YRVsyWYm9waoyPrvuW6N69jeXwZ2pXRw&usqp=CAU" class="circle" align="center"></td>
                        </tr>
                        <tr align="center" style="font-size: 20px;">
                            <td colspan="2">APPOINMENT BOOKING</td>
                        </tr>
                        <tr>
                            <td><label for="name">Name</label></td>
                            <td><input type="text" id="name" name="name" required></td>
                        </tr>

                        <tr style="padding-left: 140px;">
                            <td><label for="email">Email</label></td>
                            <td><input type="email" id="email" name="email" required></td>
                        </tr>

                        <tr>
                            <td><label for="rollnumber">Roll Number</label></td>
                            <td><input type="text" id="rollnumber" name="rollnumber" required></td>
                        </tr>

                        <!-- Add similar input fields for phone, service, reason, date_time, and emergency_level -->
                        <tr>
                            <td><label for="phone">Phone Number</label></td>
                            <td><input type="text" id="phone" name="phone" required></td>
                        </tr>

                        <tr>
                            <td><label for="service">Service</label></td>
                            <td><select id="service" name="service" required>
                                    <option value="" selected disabled>Select Service</option>
                                    <option value="Mentor">Mentor</option>
                                    <option value="Intern">Intern</option>
                                    <option value="Mteam">Mteam</option>
                                    <option value="Faculty">Faculty</option>
                                    <option value="Non-academics">Non-academics</option>
                                </select></td>
                        </tr>

                        <tr>
                            <td><label for="assigned_to">Assigned To</label></td>
                            <td><select id="assigned_to" name="assigned_to" required>
                                    <option value="" selected disabled>Select Assigned To</option>
                                    <!-- Options will be dynamically added using JavaScript -->
                                </select></td>
                        </tr>

                        <tr>
                            <td><label for="slot">Slot Timing</label></td>
                            <td><?php

                                include 'allot_slot.php'; ?></td>
                        </tr>



                        <tr>
                            <td><label for="reason">Reason for Appointment</label></td>
                            <td><input type="text" id="reason" name="reason" required></td>
                        </tr>

                        <tr>
                            <td><label for="date_time">Date and Time</td></label>
                            <td><input type="date" id="date_time" name="date_time" required></td>
                        </tr>

                        <tr>
                            <td><label for="emergency_level">Emergency Level</label></td>
                            <td><select id="emergency_level" name="emergency_level" required>
                                    <option value="" selected disabled>Select Emergency Level</option>
                                    <option value="High">High</option>
                                    <option value="Moderate">Moderate</option>
                                    <option value="Low">Low</option>
                                </select></td>
                        </tr>
                        <!-- Use JavaScript to show/hide options based on the selected service -->

                        <tr align="center" style="font-size: 30px;">
                            <td colspan="2"><input type="submit" value="Make Appointment" class="submit" onclick="sendMail()"></td>
                        </tr>
                    </form>
                </table>
            </center>
        </div>
        <script>
            document.addEventListener("DOMContentLoaded", function() {
                const serviceSelect = document.getElementById("service");
                const assignedToSelect = document.getElementById("assigned_to");

                serviceSelect.addEventListener("change", function() {
                    assignedToSelect.innerHTML = ""; // Clear previous options

                    if (serviceSelect.value === "Mentor") {
                        const mentors = ["Janagi R", "Kalaivani E", "Chitradevi TN", "Ashokkumar R", "Yamuna R", "Yuvalatha S", "Deepa V", "Karthika M", "Sarankumar A"];
                        mentors.forEach(function(mentor) {
                            const option = document.createElement("option");
                            option.value = mentor;
                            option.textContent = mentor;
                            assignedToSelect.appendChild(option);
                        });
                    } else if (serviceSelect.value === "Intern") {
                        const interns = ["Sudharsan", "Sujeeth", "Madhanraj", "Pragadeesh", "Sanjay", "Premananth", "Vijay", "Yashwanth"];
                        interns.forEach(function(intern) {
                            const option = document.createElement("option");
                            option.value = intern;
                            option.textContent = intern;
                            assignedToSelect.appendChild(option);
                        });
                    } else if (serviceSelect.value === "Mteam") {
                        const option = document.createElement("option");
                        option.value = "Mteam";
                        option.textContent = "Mteam";
                        assignedToSelect.appendChild(option);
                    } else if (serviceSelect.value === "Non-academics") {
                        const non_acad = ["Dean", "Principal", "Bonafide", "Scholarship", "RP team", "On-Duty", "Fees"];
                        non_acad.forEach(function(Non_academics) {
                            const option = document.createElement("option");
                            option.value = Non_academics;
                            option.textContent = Non_academics;
                            assignedToSelect.appendChild(option);
                        });
                    } else if (serviceSelect.value === "Faculty") {
                        const fac = ["Kathiga M", "Nikitha M", "Ramasami S", "Janagi R", "Yamuna R", "Saranya DV", "Dhivya P"];
                        fac.forEach(function(faculty) {
                            const option = document.createElement("option");
                            option.value = faculty;
                            option.textContent = faculty;
                            assignedToSelect.appendChild(option);
                        });
                    } // Add more cases for other services
                });
            });
        </script>
    </div>
</body>

</html>