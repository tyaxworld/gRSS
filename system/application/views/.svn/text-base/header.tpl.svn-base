<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>{$meta->title}</title>
        <link type="text/css" rel="stylesheet" href="{$base_url}css/stylesheet.css">
        <script type="text/javascript" src="{$base_url}js/jquery-1.5.1.min.js"></script>
        <script src="{$base_url}js/jquery.lightbox_me.js" type="text/javascript"></script>
        <script src="{$base_url}js/jcarousellite_1.0.1c4.js" type="text/javascript"></script>
        <script src="{$base_url}js/jquery-ui-1.8.12.custom.min.js" type="text/javascript"></script>
        <script src="{$base_url}js/scripts.js" type="text/javascript"></script>
    </head>
    <body>
        <div id="container">
<!--      header      -->
            <div id="header">
            	<div id="headerbar">
                    <div id="logo">
                        Logo
                    </div>
                    <div id="login_menu">
                        <div id="buttons">
                            {if isset($user_data)}
                            <a id="button1" href="#">Моят профил</a>
                            <a id="button3" href="{$base_url}news/logout">Изход</a>
                            {else}
                            <a id="button2" href="#">Вход <span>/</span> Регистрация</a>
                            {/if}
                        </div>
                        <div id="loginForm">
                        <div id="closeLogin">Затвори</div>
                        <form action="{$base_url}news/login" method="post" id="login-form">
                            <h2 class="bullet-title">Вход за потребители</h2>
                            <fieldset>
                                <label for="loguser" id="loguser-label" class="loglabel">
                                    <input name="loguser" id="loguser" value="Потребителско име" onclick="this.value='';"  onfocus="this.select()" onblur="this.value=!this.value?'Потребителско име':this.value;" type="text">
                                </label>

                                <label for="logpass" id="logpass-label" class="loglabel">
                                    <input name="logpass" id="logpass" value="Парола" onclick="this.value='';"  onfocus="this.select()" onblur="this.value=!this.value?'Парола':this.value;" type="text">
                                </label>
                                <input id="login-submit-button" value="Submit" type="submit">
                            </fieldset>
                            <div id="userInfo"></div>
                            <a href="#" id="register-button">Регистрация</a>
                            <a href="#" id="forgotten-button">Забравена парола?</a>

                        </form>
                    </div>
                    </div>
                </div>
                <div id="menubar">
                    <div class="menubar-l"></div>
                    <div class="menubar-r"></div>
                    <div class="menubar-m"></div>
                </div>
                <div id="menu">
                    <ul class="menu">
                        <li class="level1 item1">
                            <a class="level1 item1" href="">
                                <span>Начало</span>
                            </a>
                        </li>
                        <li class="level1 item2">
                            <a class="level1 item2" href="">
                                <span>Item 2</span>
                            </a>
                        </li>
                        <li class="level1 item3">
                            <a class="level1 item3" href="">
                                <span>Item 3</span>
                            </a>
                        </li>
                        <li class="level1 item4">
                            <a class="level1 item4" href="">
                                <span>Item 4</span>
                            </a>
                        </li>
                        <li class="level1 item5">
                            <a class="level1 item5" href="">
                                <span>Item 5</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="mainBody">
            