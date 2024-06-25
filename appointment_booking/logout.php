<?php
session_start();
session_unset(); // Clear all session variables
session_destroy(); // Destroy the session

// Redirect to the login page after logout
header("Location: login_admin.php");
exit();
