<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>О музее</title>
</head>
<body>
<input class="c-checkbox" type="checkbox" id="start">
<input class="c-checkbox" type="checkbox" id="progress2">
<input class="c-checkbox" type="checkbox" id="progress3">
<input class="c-checkbox" type="checkbox" id="finish">
<link rel="stylesheet" href="css/reg.css">
<div class="c-form__progress"></div>

<div class="c-formContainer">
  <div class="c-welcome"><a href="main.html">Добро пожаловать!</a></div>
  <form class="c-form" method="POST" action="php/login.php">
    <div class="c-form__group">
      <label class="c-form__label" for="username">
                    <input
                        type="text"
                        id="username"
                        name="email"
                        class="c-form__input"
                        placeholder=" "
                        pattern="[^\s]+"
                        required>

                    <label class="c-form__next" for="progress2" role="button">
                        <span class="c-form__nextIcon"></span>
                    </label>

      <span class="c-form__groupLabel">Email</span>
      <b class="c-form__border"></b>
      </label>
    </div>
    <div class="c-form__group">
      <label class="c-form__label" for="fpass">
                    <input
                        type="password"
                        id="fpass"
                        name="password"
                        class="c-form__input"
                        placeholder=" "
                        required>

                    <button class="c-form__next" name="login" for="finish" role="button">
                        <span class="c-form__nextIcon"></span>
                    </button>

      <span class="c-form__groupLabel">Пароль.</span>
      <b class="c-form__border"></b>
      </label>
    </div>

    <label class="c-form__toggle" for="start">Войти<span class="c-form__toggleIcon"></span></label>
  </form>
</div>