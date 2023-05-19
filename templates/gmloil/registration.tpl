<div class="container-data"><div class="registration-form">
    <h1 class="registration-form__title">
        [registration]Регистрация[/registration][validation]Обновление профиля[/validation]
    </h1>
    <div class="registration-form__rul-text">
        [registration]
        <b>Здравствуйте, уважаемый посетитель нашего сайта!</b><br /><br /> Регистрация на нашем сайте позволит Вам быть его полноценным участником. Вы сможете добавлять новости на сайт, оставлять свои комментарии, просматривать скрытый текст и многое другое.
        <br /><br />В случае возникновения проблем с регистрацией, обратитесь к <a href="/index.php?do=feedback">администратору</a> сайта. [/registration] [validation]
        <b>Уважаемый посетитель,</b><br /> Ваш аккаунт был зарегистрирован на нашем сайте, однако информация о Вас является неполной, поэтому заполните дополнительные поля в Вашем профиле. [/validation]
    </div>


    [registration]
    <div class="registration-form__block">
        <span class="profile-span data-main__mt-b">Ваш логин:</span>
        <input class="data-main__mt-b" type="text" name="name" id="name" required />
        <input class="btn-m" title="Проверить доступность логина для регистрации" onclick="CheckLogin(); return false;" type="button" value="Проверить имя" />
    </div>

    <div class="registration-form__block">
        <span class="profile-span data-main__mt-b">Ваш пароль:</span>
        <input type="password" name="password1" id="password1" required />
    </div>

    <div class="registration-form__block">
        <span class="profile-span data-main__mt-b">Повторите пароль:</span>
        <input type="password" name="password2" id="password2" required />
    </div>

    <div class="registration-form__block">
        <span class="profile-span data-main__mt-b">Ваш E-Mail:</span>
        <input type="text" name="email" id="email" required />
    </div>

    [question]
    <div class="registration-form__block">
        <span class="profile-span data-main__mt-b">Вопрос:</span> {question}
        <input type="text" name="question_answer" placeholder="Впишите ответ на вопрос" required />
    </div>
    [/question] [sec_code]
    <div class="registration-form__block">
        <span class="profile-span data-main__mt-b">Введите код с картинки:</span>
        <input type="text" name="sec_code" id="sec_code" placeholder="Впишите код с картинки" maxlength="45" required />{reg_code}
    </div>
    [/sec_code] [recaptcha]
    <div class="registration-form__block">
        <span class="profile-span data-main__mt-b">Введите два слова с картинки:</span> {recaptcha}
    </div>
    [/recaptcha] [/registration] [validation]
    <div class="registration-form__block">
        <span class="profile-span data-main__mt-b">Ваше имя:</span>
        <input type="text" id="fullname" name="fullname" />
    </div>

    <div class="registration-form__block">
        <span class="profile-span data-main__mt-b">Место жительства:</span>
        <input type="text" id="land" name="land" />
    </div>

    <div class="registration-form__block">
        <span class="profile-span data-main__mt-b">Фото профиля:</span>
        <input type="file" id="image" name="image" />
    </div>

    <div class="registration-form__block">
        <span class="profile-span data-main__mt-b">Расскажите о себе:</span>
        <textarea id="info" name="info" rows="8" /></textarea>
    </div>

    <div class="registration-form__block">
        {xfields}
    </div>
    [/validation]

    <div class="registration-form__block">
        <button class="btn-m" name="submit" type="submit">Отправить</button>
    </div>
</div>
</div>