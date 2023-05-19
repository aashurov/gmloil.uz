<div class="container-data">
<div class="lostpass-form">
    <h1 class="lostpass-form__title">Восстановить пароль</h1>

    <div class="lostpass-form__block">
        <span class="profile-span data-main__mt-b">Ваш логин:</span>
        <input type="text" name="lostname" placeholder="Ваш логин или E-Mail на сайте" />
    </div>
    [sec_code]
    <div class="lostpass-form__block">
        <span class="profile-span data-main__mt-b">Введите код с картинки:</span>
        <input type="text" name="sec_code" id="sec_code" placeholder="Впишите код с картинки" maxlength="45" required />{code}
    </div>
    [/sec_code] [recaptcha]
    <div class="lostpass-form__block">
        <span class="profile-span data-main__mt-b">Введите два слова с картинки:</span>
        <div class="lostpass-form__re-cap">
            {recaptcha}
        </div>
    </div>
    [/recaptcha]
    <div class="lostpass-form__block">
        <button class="btn-m" name="submit" type="submit">Отправить</button>
    </div>
</div>
</div>