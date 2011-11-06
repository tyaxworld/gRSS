$(document).ready(function(){
          $("#button2").click(function(){
               if ($("#loginForm").is(":hidden")){
                   $("#buttons").hide();
                    $("#loginForm").slideDown("slow");
                }
                else{
                        $("#loginForm").slideUp("slow");
                        $("#buttons").slideDown("slow");
                    }
             });
             $("#closeLogin").click(function(){
               $("#loginForm").hide();
               $("#buttons").slideDown("slow");
             });

        //popup sign in form
        $('#register-button').click(function() {
           $('#sign_up').lightbox_me({
                centered: true
                });
            return false;
        });
         

////check username with Ajax
//        $("#name").blur(function() {
//            var username = $("#name");
//            var usernameInfo = $("#nameInfo");
//            var usr = $("#name").val();
//            if(usr.length >= 4){
//                usernameInfo.html('<img src="./images/loader.gif">');
//
//                $.ajax({
//                    type: "POST",
//                    url: "news/user_check",
//                    data: "name="+ usr,
//                    success: function(msg){
//                        if(msg == 1){
//                            usernameInfo.addClass("object_ok");
//                            usernameInfo.html('&nbsp;<img src="./images/tick.gif" align="absmiddle">');
//                            }
//                            else{
//                                username.addClass("error");
//                                usernameInfo.text("Потребителското име вече е заето!");
//                                usernameInfo.addClass("error");
//                            }
//                        }
//                    });
//            }
//        });

        //form validation

	var form = $("#customForm");
	var name = $("#name");
	var nameInfo = $("#nameInfo");
	var email = $("#email");
	var emailInfo = $("#emailInfo");
	var pass1 = $("#pass1");
	var pass1Info = $("#pass1Info");
	var pass2 = $("#pass2");
	var pass2Info = $("#pass2Info");
        var captcha = $("#captcha");
        var captchaInfo  = $("#captchaInfo");

	//On blur
	name.blur(validateName);
	email.blur(validateEmail);
	pass1.blur(validatePass1);
	pass2.blur(validatePass2);
        //On key press
	//name.keyup(validateName);
	pass1.keyup(validatePass1);
	pass2.keyup(validatePass2);
       //On Submitting
	form.submit(function(){
           
		if(checkCaptcha() & validateName() & validateEmail() & validatePass1() & validatePass2())
			{
                           // alert("Everything OK");
                            var username = $("#name").val();
                            var email = $("#email").val();
                            var password =  $("#pass1").val();
                            var dataString = 'name='+ username + '&email=' + email + '&pass1=' + password;
                          //alert (dataString);return false;
                          $.ajax({
                            type: "POST",
                            url: "news/register",
                            data: dataString,
                            async: false,
                            success: function() {
                              $('#sign_up').html("<div id='message'></div>");
                              $('#message').html("<h2>Вие се регистрирахте успешно!</h2>")
                              .append("<p>Може да влезете в профила си.</p>");
                             $('#sign_up').ready(function() {
                                    setTimeout(closeform, 5000);
                                });
                             
                            }
                          });


                            return false;
                        }
		else{
                    alert("something wrong");
			return false;
                }
	});
        function closeform(){
            $('#sign_up').hide();
            $('.lb_overlay').hide();
        }
        //captcha check
        function checkCaptcha(){
            var code = $("#captcha").val();	 // get the code entered
            if(code.length>4){
               var res = $.ajax({
                    type: "POST",
                    url: "news/ajax_captcha",
                    data: "captcha="+ code,
                    async: false,
                    success: function(response){
                        if(response == 1){
                        captcha.removeClass("error");
                        captchaInfo.html('&nbsp;<img src="./images/tick.gif" align="absmiddle">');
			captchaInfo.removeClass("error");
			
                       }
                       else{
                        captcha.addClass("error");
			captchaInfo.text("Кодът не съвпада!");
			captchaInfo.addClass("error");
			
                            }
                        }
                    }).responseText;
                    if (res==1){
                        return true;
                    }else{
                        return false;
                    }
                

	}else{
            return false;
        }
        }
        function checkUsername(){
             var username = $("#name");
            var usernameInfo = $("#nameInfo");
            var usr = $("#name").val();
            if(usr.length >= 4){
                usernameInfo.html('<img src="./images/loader.gif">');

                var response = $.ajax({
                    type: "POST",
                    url: "news/user_check",
                    data: "name="+ usr,
                    async: false,
                    success: function(msg){
                        if(msg == 1){
                            usernameInfo.addClass("object_ok");
                            usernameInfo.html('&nbsp;<img src="./images/tick.gif" align="absmiddle">');
                            }
                            else{
                                username.addClass("error");
                                usernameInfo.text("Потребителското име вече е заето!");
                                usernameInfo.addClass("error");
                            }
                        }
                    }).responseText;
                    if (response == 1){
                        return true;
                    }else{
                        return false;
                    }


	}else{
            return false;
        }
        }
	//validation functions
	function validateEmail(){
		//testing regular expression
		var a = $("#email").val();
		var filter = /^[a-zA-Z0-9]+[a-zA-Z0-9_.-]+[a-zA-Z0-9_-]+@[a-zA-Z0-9]+[a-zA-Z0-9.-]+[a-zA-Z0-9]+.[a-z]{2,4}$/;
		//if it's valid email
		if(name.val().length > 0 ){
                    if(filter.test(a)){
                            email.removeClass("error");
                            emailInfo.html('&nbsp;<img src="./images/tick.gif" align="absmiddle">');
    //			emailInfo.text("Валиден email адрес!");
                            emailInfo.removeClass("error");
                            return true;
                    }
                    //if it's NOT valid
                    else{
                            email.addClass("error");
                            emailInfo.text("Имейлът не е валиден!");
                            emailInfo.addClass("error");
                            return false;
                    }
                }else{
                    return false;
                }
	}
	function validateName(){
		//if it's NOT valid
		if(name.val().length < 4 && name.val().length != 0 ){
			name.addClass("error");
			nameInfo.text("Въведете повече от 3 символа!");
			nameInfo.addClass("error");
			return false;
		}
		//if it's valid
		else{
//			name.removeClass("error");
//                        nameInfo.html('&nbsp;<img src="./images/tick.gif" align="absmiddle">');
////			nameInfo.text("Вашето потребителско име?");
//			nameInfo.removeClass("error");
//			return true;
                        name.removeClass("error");
                        if(checkUsername()){
                            return true;
                        }else{
                            return false;
                        }
		}
	}
	function validatePass1(){
		//it's NOT valid
		if(pass1.val().length <5 && pass1.val().length > 0){
			pass1.addClass("error");
			pass1Info.text("Въведи поне 5 символа!!");
			pass1Info.addClass("error");
			return false;
		}
		//it's valid
		else if(pass1.val().length == 0){return false;}
                else{
			pass1.removeClass("error");
                        pass1Info.html('&nbsp;<img src="./images/tick.gif" align="absmiddle">');
			pass1Info.removeClass("error");
			validatePass2();
			return true;
		}
	}
	function validatePass2(){
		//are NOT valid
		if( pass1.val() != pass2.val() && pass2.val().length != 0 ){
			pass2.addClass("error");
			pass2Info.text("Паролите не съвпадат");
			pass2Info.addClass("error");
			return false;
		}
		//are valid
		else if(pass2.val().length == 0){return false;}
                else{
			pass2.removeClass("error");
                        pass2Info.html('&nbsp;<img src="./images/tick.gif" align="absmiddle">');
//			pass2Info.text("Повторете паролата!");
			pass2Info.removeClass("error");
			return true;
		}
	}
        
        

});