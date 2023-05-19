<div class="container-data">
<article class="pm-block">
    <div class="pm-block__wrapper">
        <h1 class="pm-block__title">Личные сообщения</h1>

        <div class="pm-block__main-pm main-pm">
            <div class="main-pm__nav">
                [inbox]<span>Входящие</span>[/inbox] [outbox]
                <span>Отправленные</span>[/outbox] [new_pm]
                <span>Написать новое сообщение</span>[/new_pm]
            </div>
            <div class="main-pm__progress-bar">
                {pm-progress-bar} {proc-pm-limit} % / ({pm-limit} сообщений)
            </div>
        </div>
        [pmlist]
        <div class="pm-block__list-pm list-pm">
            <div class="list-pm__wrapper">
                {pmlist}
            </div>
        </div>
        [/pmlist]
[newpm]
        <div class="pm-block__new-pm new-pm">
            <div class="new-pm__wrapper">
                <h3 class="new-pm__title">Написать новое сообщение</h3>

                <div class="new-pm__add-form">
                    <div class="new-pm__block-input">
                        <div class="new-pm__input">
                            <input placeholder="Имя адресата" type="text" name="name" value="{author}" class="wide" required>
                        </div>
                        <div class="new-pm__input">
                            <input placeholder="Тема сообщения" type="text" name="subj" value="{subj}" class="wide" required>
                        </div>
                    </div>

                    <div class="new-pm__comment" id="comment-editor">{editor}</div>
                    <input type="checkbox" id="outboxcopy" name="outboxcopy" value="1" />
                    <label for="outboxcopy">Сохранить сообщение в папке "Отправленные"</label> [recaptcha]
                    <li>{recaptcha}</li> [/recaptcha] [question]
                    <div class="new-pm__question">
                        <label for="question_answer">Вопрос: {question}</label>
                        <input placeholder="Ответ" type="text" name="question_answer" id="question_answer" class="wide" required>
                    </div>
                    [/question]

                    <div class="new-pm__submit">
                        [sec_code]
                        <div class="new-pm__captcha">
                            {sec_code}
                            <input placeholder="Повторите код" title="Введите код указанный на картинке" type="text" name="sec_code" id="sec_code" required>
                        </div>
                        [/sec_code]
                        <button class="btn-m" type="submit" name="add"><b>Отправить</b></button>
                        <button class="btn-m" type="button" onclick="dlePMPreview()">Предпросмотр</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    [/newpm]
    [readpm]
    <div class="open-message">
        <div class="open-message__title">Ваши сообщения</div>

        <div class="open-message__text-block message-block flex">
            <div class="message-block__avatar">
                <div class="message-block__image">
                    <img src="{foto}" alt="{login}" class="message-block__img">
                </div>
                <div class="message-block__au-block">{author}</div>
            </div>
            <div class="message-block__data-block">
                <div class="message-block__details">
                    <div>{date}</div>
                </div>
                <div class="message-block__message">
                    {text}
                </div>
                <div class="message-block__data-item">
                    <div class="message-block__item">[reply]Ответить[/reply]</div>
                    <div class="message-block__item">[ignore]Игнор[/ignore]</div>
                    <div class="message-block__item">[complaint]Пожаловаться[/complaint]</div>
                    <div class="message-block__item">[del]Удалить[/del]</div>
                </div>
            </div>
        </div>
    </div>
    [/readpm]
</article>
    <div>