<!--noindex-->
<div class="comment-block__add" id="comment-add">
    [not-logged]
    <div class="comment-block__inputs">
        <input class="comment-block__data" type="text" maxlength="35" name="name" id="name" placeholder="Ваше имя" />
        <input class="comment-block__data" type="text" maxlength="35" name="mail" id="mail" placeholder="Ваш e-mail (необязательно)" />
    </div>
    [/not-logged]
    <div class="comment-block__textarea">{editor}</div>

    [not-group=1]
    <div class="comment-block__examination">
        [question]
        <div class="comment-block__form-item">
            <label class="comment-block__label-q">Вопрос:</label>
            <div class="comment-block__form-secur">
                <div style="margin-bottom:10px;">{question}</div>
                <input type="text" name="question_answer" placeholder="Впишите ответ на вопрос" required />
            </div>
        </div>
        [/question] [sec_code]
        <div class="comment-block__form-item">
            <div class="comment-block__form-secur">
                <input class="comment-block__data comment-block__data-c" type="text" name="sec_code" id="sec_code" placeholder="Впишите код с картинки" maxlength="45" required />{sec_code}
            </div>
        </div>
        [/sec_code] [recaptcha]
        <div class="comment-block__form-item">
            <label class="comment-block__label-q">Введите два слова с картинки:</label>
            <div class="comment-block__form-secur">
                {recaptcha}
            </div>
        </div>
        [/recaptcha]
    </div>
    [/not-group]

    <button class="comment-block__submit" name="submit" type="submit">Добавить комментарий</button>


</div>
<!--/noindex-->