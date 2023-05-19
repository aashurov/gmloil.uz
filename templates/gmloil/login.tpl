[not-group=5]
    <div class="login-p" id="login-p">
        <div class="login-p__wrapper">
            <span class="form-block__title form-block__pb">Привет, {login}</span>
            <div class="login-p__avatar">
                <img src="{foto}" alt="" class="login-p__img">
            </div>
            <span class="login-p__admin-p">
                <a href="{admin-link}" class="login-p__admin-link">Админпанель</a>
            </span>
            <ul class="login-p__grid">
                <li class="login-p__item">
                    <a href="{addnews-link}" class="login-p__link">Добавить пост</a>
                </li>
                <li class="login-p__item">
                    <a href="{profile-link}" class="login-p__link"> Мой профиль</a>
                </li>
                <li class="login-p__item">
                    <a href="{pm-link}" class="login-p__link">Сообщения: ({new-pm})</a>
                </li>
                <li class="login-p__item">
                    <a href="{favorites-link}" class="login-p__link">Мои закладки ({favorite-count})</a>
                </li>
                <li class="login-p__item">
                    <a href="{stats-link}" class="login-p__link">Статистика</a>
                </li>
                <li class="login-p__item">
                    <a href="{newposts-link}" class="login-p__link">Непрочитанное</a>
                </li>
                <li class="login-p__item">
                    <a href="/?do=lastcomments" class="login-p__link">Комментарии</a>
                </li>
                <li class="login-p__item">
                    <a href="{logout-link}" class="login-p__link">Выйти</a>
                </li>
            </ul>
            <i class="ri-close-line login-p__close" id="login-close"></i>

        </div>
    </div>
[/not-group]
[group=5]
<div class="login-p" id="login-p">
        <div class="login-p__wrapper">
            <form method="post" class="form-block">
                <span class="form-block__title">Авторизация</span>
                <div class="form-block__inputs">
                    <input class="form-block__input" type="text" name="login_name" id="login_name" placeholder="Ваш логин" />
                </div>
                <div class="form-block__inputs">
                    <input class="form-block__input" type="password" name="login_password" id="login_password" placeholder="Ваш пароль" />
                </div>
                <div class="form-block__flex-cont">
                    <div class="form-block__check">
                        <input type="checkbox" name="login_not_save" id="login_not_save" value="1" />
                        <label for="login_not_save">Запоминать меня</label>
                    </div>
                    <div class="form-block__pass-forget">
                        <a href="{lostpassword-link}" class="form-block__link">Забыли пароль?</a>
                    </div>
                </div>
                <div class="form-block__login">
                    <div>
                        <button class="form-block__btn" onclick="submit();" type="submit" title="Вход">Войти на сайт</button>
                        <input name="login" type="hidden" id="login" value="submit" />
                    </div>
                    <div>
                        <a href="/?do=register" class="form-block__btn">Зарегестрироваться</a>
                    </div>
                </div>
            </form>
            <i class="ri-close-circle-line block-nav__icon" id="login-close"></i>
        </div>
    </div>
[/group]