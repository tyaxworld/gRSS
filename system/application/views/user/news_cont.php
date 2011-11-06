<h3>Вход</h3>
<form onsubmit="" id="login_form" action="<?php base_url();?>login/validate_credentials" method="post" class="">
<div class="p_form_row_1 clearfix">
<label for="username">Потребителско име:</label>
<span class="">
<input class="" type="text" name="username" id="username" value="" size="32" />
</span>
<sup>*</sup>

</div>
<div class="">
<label for="password">Парола:</label>
<span class="">
<input class="" type="password" name="password" id="password" size="32" />
</span>
<sup>*</sup>

</div>

<div class="">
<button type="submit">Вход</button>
</div>
</form>