[not-group=5]
<div class="header__sign-in"><span> {login}</span></div>

<div id="profile" class="modalDialog">
<div>

[admin-link]<div class="login-item"><a href="{admin-link}" class="admin">Админпанель</a></div>[/admin-link]
<div class="login-item"><a href="{profile-link}">Мой профиль</a></div>
<div class="login-item"><a href="{favorites-link}">Мои закладки</a></div>
<div class="login-item"><a href="{logout-link}" style="margin-bottom:0">Выход</a></div>
</div>
</div>
[/not-group]

[group=5]
<div class="header__sign-in"><span> Войти</span></div>
<div id="profile" class="modalDialog">
<div>
<form method="post">
<div class="form-group">
<input placeholder="{login-method}" type="text" name="login_name" id="login_name">
</div>
<div class="form-group">
<input placeholder="Пароль" type="password" name="login_password" id="login_password">
</div>
<div class="form-group">
<button class="btn" onclick="submit();" type="submit" style="width:100%">Авторизоваться</button>
</div>
<input name="login" type="hidden" id="login" value="submit">
<span class="sign-text">Нет аккаунта? <a href="{registration-link}"> Зарегистрируйся!</a></span>
<span class="sign-text"><a href="{lostpassword-link}">Восстановить пароль</a></span>
</form>
</div>
</div>
[/group]