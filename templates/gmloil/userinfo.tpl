<div class="container-data">
<div class="profile-us">
    <div class="profile-us__wrapper flex">
        <div class="profile-us__user">
            <div class="profile-us__data-block">
                <div class="profile-us__images">
                    <img src="{foto}" alt="Пользователь">
                </div>
                <div class="profile-us__meta-d">
                    <div class="profile-us__name">{usertitle}</div>
                    [land]
                    <div class="profile-us__city">{land}</div>[/land]
                    <div class="status-web">
                        [online]<span class="st-online">В сети</span>[/online] [offline]
                        <span class="st-offline">Не в сети</span>[/offline]
                    </div>
                </div>
                <div class="profile-us__posts posts-block">
                    <div class="posts-block__details flex">
                        <div class="posts-block__post">
                            <div class="posts-block__num">{news-num}</div> <span class="posts-block__data">Публикаци</span></div>
                        <div class="posts-block__post">
                            <div class="posts-block__num">{comm-num}</div> <span class="posts-block__data">Комментариев</span></div>
                    </div>
                </div>
            </div>
            <div class="profile-us__data-block">
                <div class="profile-us__info">Как связаться</div>
                <div class="profile-us__email btn-m">{email}</div>
                [not-group=5]
                <div class="profile-us__email btn-m">{pm}</div>[/not-group] [not-logged]
                <div class="profile-us__email btn-m">{edituser}</div>[/not-logged]
            </div>
        </div>
        <div class="profile-us__details details-block">
            <div class="details-block__title">
                <h1>Данные о пользователе {usertitle}</h1>
            </div>

            <div class="details-block__wrapper">
                <div class="details-block__rega flex">
                    [not-group=5]
                    <div class="details-block__name"><span class="profile-span">Имя</span>
                        <div class="details-block__item-b">{fullname}</div>
                    </div>[/not-group]
                    <div class="details-block__reg"> <span class="profile-span">Дата регистрации</span>
                        <div class="details-block__item-b">{registration}</div>
                    </div>
                    [not-group=5][signature]
                    <div class="details-block__about-us"> <span class="profile-span">Подпись</span>
                        <div class="details-block__item-b">{signature}</div>
                    </div>[/signature][/not-group]
                </div>
                [not-group=5]
                <div class="details-block__about-us">
                    <div class="details-block__about"> <span class="profile-span">О себе</span>
                        <div class="details-block__item-b">{info}</div>
                    </div>
                </div>[/not-group]
                <div class="details-block__meta-data">
                    <div class="details-block__info">Информация</div>
                    [comm-num]
                    <div class="details-block__block-info btn-m">{comments}</div>[/comm-num] [news-num]
                    <div class="details-block__block-info btn-m">{news}</div>[/news-num]
                    <div class="details-block__visit">Последний визит пользователя: {lastdate}</div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="options" style="display:none; margin-bottom: 30px" class="edit-form-us">
    <div class="edit-form-us__wrapper">
        <h1 class="edit-form-us__title">Редактирование пользователя</h1>

        <div class="edit-form-us__name">
            <span class="profile-span mb-1">Ваше имя</span>
            <input type="text" name="fullname" value="{fullname}" placeholder="Ваше Имя" />
        </div>

        <div class="edit-form-us__email">
            <span class="profile-span mb-1">Ваше email</span>
            <input type="text" name="email" value="{editmail}" placeholder="Ваш E-Mail: {editmail}" />
        </div>

        <div class="edit-form-us__land">
            <span class="profile-span mb-1">Место жительства</span>
            <input type="text" name="land" value="{land}" placeholder="Место жительства" />
        </div>

        <div class="edit-form-us__checked">
            {hidemail}
            <input style="margin-left: 50px" type="checkbox" id="subscribe" name="subscribe" value="1" />
            <label for="subscribe">Отписаться от подписанных новостей</label>
        </div>

        <div class="edit-form-us__ignore-user">
            <span class="profile-span mb-1">Список игнорируемых пользователей</span> {ignore-list}
        </div>

        <div class="edit-form-us__old-pass">
            <span class="profile-span mb-1">Старый пароль</span>
            <input type="password" name="altpass" placeholder="Старый пароль" />
        </div>

        <div class="edit-form-us__new-pass">
            <span class="profile-span mb-1">Новый пароль</span>
            <input type="password" name="password1" placeholder="Новый пароль" />
        </div>

        <div class="edit-form-us__rep-pass">
            <span class="profile-span mb-1">Повторите пароль</span>
            <input type="password" name="password2" placeholder="Повторите Новый пароль" />
        </div>

        <div class="edit-form-us__textarea">
            <span class="profile-span mb-1">Блокировка по IP (Ваш IP: {ip})</span>
            <textarea name="allowed_ip" style="height: 160px" rows="5" class="f_textarea">{allowed-ip}</textarea>
            <div style="margin-top: 10px">
                <span style="color:red; font-size:12px;">
                * Внимание! Будьте бдительны при изменении данной настройки.
                Доступ к Вашему аккаунту будет доступен только с того IP-адреса или подсети, который Вы укажете.
                Вы можете указать несколько IP адресов, по одному адресу на каждую строчку.
                <br />
                Пример: 192.48.25.71 или 129.42.*.*</span>
            </div>
        </div>

        <div class="edit-form-us__load-avatar">
            <span class="profile-span mb-1">Загрузка аватара</span>
            <input type="file" name="image" size="28" />
        </div>

        <div class="edit-form-us__load-avatar-service">
            <span class="profile-span mb-1">Загрузка аватара из сервиса Gravatar</span>
            <input type="text" name="gravatar" value="{gravatar}" placeholder="Укажите E-Mail в этом сервисе" />
        </div>

        <div class="edit-form-us__delete-avatar">
            <span class="profile-span mb-1">Удалить существующий аватар <input type="checkbox" name="del_foto" id="del_foto" value="yes" /></span>

        </div>

        <div class="edit-form-us__timezone">
            <span class="profile-span mb-1">Часовой пояс</span> {timezones}
        </div>

        <div class="edit-form-us__about-us">
            <span class="profile-span mb-1">Пару слов о себе</span>
            <textarea name="info" rows="5">{editinfo}</textarea>
        </div>

        <div class="edit-form-us__signature">
            <span class="profile-span mb-1">Подпись</span>
            <textarea name="signature" rows="5">{editsignature}</textarea>
        </div>

        <div class="edit-form-us__xfields">
            <table class="tableform">{xfields}</table>
        </div>

        <div class="edit-form-us__meta">
            <div class="edit-form-us__checked">{twofactor-auth}</div>
            <div class="edit-form-us__checked">{news-subscribe}</div>
            <div class="edit-form-us__checked">{comments-reply-subscribe}</div>
            <div class="edit-form-us__checked">{unsubscribe}</div>
        </div>


        <div class="edit-form-us__submit flex">
            <button class="btn-m" name="submit" type="submit">Сохранить изменения</button>
            <input name="submit" type="hidden" id="submit" value="submit" />
        </div>
    </div>
</div>
</div>