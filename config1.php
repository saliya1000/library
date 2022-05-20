<?php
require_once "google-api/vendor/autoload.php";
$gClient = new Google_Client();
$gClient->setClientId("415636178605-dhdtq9ldrrtgtj3d35f55obvebpk0b7h.apps.googleusercontent.com");
$gClient->setClientSecret("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");
$gClient->setApplicationName("Vicode Media Login");
$gClient->setRedirectUri("http://localhost/library/controller.php");
$gClient->addScope("https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/userinfo.email");

// login URL
$login_url = $gClient->createAuthUrl();
?>