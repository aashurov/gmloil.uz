<div class="container-data">
    <div class="form-feedback">
    <div class="form-feedback__title">Обратная связь</div>

    <div class="form-feedback__wrapper flex">
        <div class="form-feedback__data-feedb data-feedb">
            <div class="data-feedb__title">Контакты</div>
            <span class="data-feedb__name-item">e-mail</span>
            <div class="data-feedb__email">yandex@yandex.by</div>
            <span class="data-feedb__name-item">Телефоны</span>
            <div class="data-feedb__phone">+99 999 99 99</div>
            <div class="data-feedb__phone">+99 999 99 99</div>
            <div class="data-feedb__phone">+99 999 99 99</div>
        </div>
        <div class="form-feedback__data-main data-main">
            [not-logged]
            <div class="data-main__item">
                <span class="profile-span data-main__mt-b">Ваше имя</span>
                <input type="text" maxlength="35" name="name" placeholder="Ваше имя" />
            </div>

            <div class="data-main__item">
                <span class="profile-span data-main__mt-b">Ваш E-Mail</span>
                <input type="text" maxlength="35" name="email" placeholder="Ваш емейл" />
            </div>
            [/not-logged]
            <div class="data-main__item">
                <span class="profile-span data-main__mt-b">Выберите получателя</span>
                <div class="data-main__send">
                    {recipient}
                </div>
            </div>

            <div class="data-main__item">
                <span class="profile-span data-main__mt-b">Тема письма</span>
                <input type="text" maxlength="45" name="subject" placeholder="Тема сообщения" />
            </div>

            <div class="data-main__item">
                <span class="profile-span data-main__mt-b">Ваш текст письма</span>
                <textarea name="message" style="height: 160px"></textarea>
            </div>


            [attachments]
            <div class="data-main__item">
                <span class="profile-span data-main__mt-b">Прикрепить файлы:</span>
                <input name="attachments[]" type="file" multiple style="line-height:40px;">
            </div>
            [/attachments] [question]
            <div class="data-main__item">
                <span class="profile-span data-main__mt-b">Вопрос:</span>
                <div class="data-main__q">
                    <div style="margin-bottom:10px;">{question}</div>
                    <input type="text" name="question_answer" id="question_answer" placeholder="Впишите ответ на вопрос" required />
                </div>
            </div>
            [/question] [sec_code]
            <div class="data-main__item">
                <span class="profile-span data-main__mt-b">Введите код с картинки:</span>
                <div class="data-main__code">
                    <input type="text" name="sec_code" id="sec_code" placeholder="Впишите код с картинки" maxlength="45" required />{code}
                </div>
            </div>
            [/sec_code] [recaptcha]
            <div class="data-main__item">
                <span class="profile-span data-main__mt-b">Введите два слова с картинки:</span>
                <div class="data-main__cap">
                    {recaptcha}
                </div>
            </div>
            [/recaptcha]

            <div class="data-main__submit">
                <button class="btn-m" name="send_btn" type="submit">Отправить</button>
            </div>
        </div>
    </div>
</div>
    </div>