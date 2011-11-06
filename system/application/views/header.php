<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My news site</title>
        <link type="text/css" rel="stylesheet" href="<?php echo base_url();?>css/stylesheet.css">
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
        <script src="<?php echo base_url();?>js/jcarousellite_1.0.1c4.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                var speed = 200;
                var pause = 3500;
                $(".arthemia-carousel").jCarouselLite({
                    btnNext: ".next",
                    btnPrev: ".prev",
                    vertical: true,
                    visible: 5,
                    speed:700
                });
                $(".arthemia-carousel2").jCarouselLite({
                    btnNext: ".next2",
                    btnPrev: ".prev2",
                    vertical: true,
                    visible: 5,
                    speed:700
                });
                
		$(".arthemia-carousel3").jCarouselLite({
                    btnNext: ".next3",
                    btnPrev: ".prev3",
                    vertical: true,
                    visible: 5,
                    speed:700
                });
                    
                    
            });
        </script>
    </head>
    <body>
        <div id="container">
<!--      header      -->
            <div id="header">
                <div id="headerbar"></div>
                <div id="menubar">
                    <div class="menubar-l"></div>
                    <div class="menubar-r"></div>
                    <div class="menubar-m"></div>
                </div>
                <div id="menu">
                    <ul class="menu">
                        <li class="level1 item1">
                            <a class="level1 item1" href="<?php base_url();?>login">
                                <span>Вход</span>
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