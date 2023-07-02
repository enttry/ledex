<?php
session_start();
require_once('db.php');

if (isset($_POST['login'])) {

if($_SERVER["REQUEST_METHOD"] == "POST") {
    // Проверка наличия логина и пароля
    if(isset($_POST['email']) && isset($_POST['password'])) {
        $email = $_POST['email'];
        $password = $_POST['password'];
        $password_hash =  md5($password);
        // Получение данные из базы данных
        $query = mysqli_query($conn,"SELECT * FROM users WHERE email = '$email' and password = '$password_hash '");
        $row = mysqli_fetch_array($query, MYSQLI_ASSOC);
        $count = mysqli_num_rows($query);
        
        
        if ($count == 1) {
            $_SESSION['login_user'] = $email;
            header("location: ../account.php");
        }
        // Если пользователь не найден, выводим сообщение об ошибке
        else {
            $error = "Неправильный логин или пароль";
            header("location: ../main.php");
        }
    }
}

}
?>