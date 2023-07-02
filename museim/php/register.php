<?php

if (isset($_POST['registration'])) {
    // Получаем данные из формы
    $username = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $password_hash =  md5($password);
   
    
    // Проверяем, что все поля заполнены
    if (empty($username) && empty($email) && empty($password)) {
        exit();
    }
   
   
    $conn = mysqli_connect("localhost", "root", "", "museim");

    // Проверяем подключение к базе данных
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Добавляем пользователя в базу данных
    $sql = mysqli_query($conn,"INSERT INTO users (name, email, password) VALUES ('$username', '$email', '$password_hash')");
    header('Location: ../main.php ');
}
?>