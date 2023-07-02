<?php
require_once('php/db.php');
session_start();
if(isset( $_SESSION['login_user'])){

    $user_session = $_SESSION['login_user'];
    $query = "SELECT * FROM users WHERE email = '$user_session'";
    $results = mysqli_query($conn, $query);
    $rows = mysqli_fetch_array($results);
    $name = $rows['name'];
    $email = $rows['email'];

    echo 'Добро пожаловать: '.$name. ' - <a href="php/exit.php">выйти</a>';


    // 1. Получить список всех экспонатов в музее.

$querys = mysqli_query($conn, "SELECT * FROM exhibit;");
echo '<h2>1. Получить список всех экспонатов в музее.</h2>';
while ($rowe = mysqli_fetch_assoc($querys)) {
    $namea = $rowe['name'];
    $description = $rowe['description'];
    echo  ' '.$namea.' - '.$description.' <br>';
}


// 2. Получить список всех художников, представленных в музее.

$query2 = mysqli_query($conn,"SELECT DISTINCT name FROM exhibit WHERE collection_id = 3;");
echo '<h2>2. Получить список всех художников, представленных в музее.</h2>';
while ($row2 = mysqli_fetch_assoc($query2)) {
    $name = $row2['name'];
    echo  $namea.' <br>';
}


// 3. Получить список экспонатов определенного художника.

$query3 = "SELECT * FROM exhibit WHERE collection_id = 3 AND name = 'Закат';";
$result3 = mysqli_query($conn, $query3);
echo '<h2>3. Получить список экспонатов определенного художника.</h2>';
while ($row3 = mysqli_fetch_assoc($result3)) {
    $namea = $row3['name'];
    $description = $row3['description'];
    echo  ' '.$namea.' - '.$description.' <br>';
}


// 4. Получить список выставок, доступных в определенный период времени.

$query4 = "SELECT * FROM event WHERE date BETWEEN '2022-05-01' AND '2022-06-01';";
$result4 = mysqli_query($conn, $query4);
echo '<h2>4. Получить список выставок, доступных в определенный период времени.</h2>';
while ($row4 = mysqli_fetch_assoc($result4)) {
    $name = $row4['name'];
    $date =  $row4['date'];
    echo $name.' '.$date. ' <br>';
}


// 5. Получить список общего количества экспонатов каждого типа в музее.

$query5 = "SELECT collection.name, COUNT(exhibit.id) AS count FROM exhibit
JOIN collection ON exhibit.collection_id = collection.id
GROUP BY collection.name;";
$result5 = mysqli_query($conn, $query5);
echo '<h2>5. Получить список общего количества экспонатов каждого типа в музее.</h2>';
while ($row5 = mysqli_fetch_assoc($result5)) {
    $name = $row5['name'];
    echo  $name.' <br>';
}


// 6. Получить данные о количестве проданных билетов за определенный период.

$query6 = "SELECT COUNT(*) FROM visitor WHERE ticket_number IS NOT NULL AND ticket_number <> 0 AND id IN (SELECT id FROM event WHERE date BETWEEN '2022-05-01' AND '2022-06-01');";
$result6 = mysqli_query($conn, $query6);
$row6 = mysqli_fetch_row($result6);
echo '<h2>6. Получить данные о количестве проданных билетов за определенный период.</h2>';
$count = $row6[0];
echo $count;

// 7. Получить список выставок, которые прошли в определенном году.

$query7 = "SELECT * FROM event WHERE date BETWEEN '2022-01-01' AND '2022-12-31';";
$result7 = mysqli_query($conn, $query7);
echo '<h2>7. Получить список выставок, которые прошли в определенном году.</h2>';
while ($row7 = mysqli_fetch_assoc($result7)) {
    $name = $row7['name'];
    $date =  $row7['date'];
    echo $name.' '.$date. ' <br>';
}

}
?>
