<div class="container-data">
<div class="stats-form">
    <div class="stats-form__wrapper">
        <h1 class="stats-form__title">Статистика сайта</h1>

        <div class="stats-form__top-wrapper flex">
            <div class="stats-form__block-item block-stats">
                <div class="block-stats__wrapper">
                    <div class="block-stats__title">Пользователи</div>
                    <div class="block-stats__num-data">{user_num}</div>
                    <div class="block-stats__title-small">из них заблокированио</div>
                    <div class="block-stats__num-data-small">{user_banned}</div>
                </div>
            </div>
            <div class="stats-form__block-item block-stats block-stats__color">
                <div class="block-stats__wrapper">
                    <div class="block-stats__title">Всего новостей</div>
                    <div class="block-stats__num-data">{news_num}</div>
                    <div class="block-stats__title-small">из них опубликовано</div>
                    <div class="block-stats__num-data-small">{news_allow}</div>
                </div>
            </div>
        </div>

        <div class="stats-form__center-wrapper flex">
            <div class="stats-form__data-item data-item">
                <div class="data-item__wrapper">
                    <div class="data-item__title">Новых новостей</div>
                    <div class="data-item__num">{news_moder}</div>
                </div>
            </div>
            <div class="stats-form__data-item data-item">
                <div class="data-item__wrapper">
                    <div class="data-item__title">Всех комментариев</div>
                    <div class="data-item__num">{comm_num}</div>
                </div>
            </div>
            <div class="stats-form__data-item data-item">
                <div class="data-item__wrapper">
                    <div class="data-item__title">Размер базы данных</div>
                    <div class="data-item__num">{datenbank}</div>
                </div>
            </div>
        </div>

        <div class="stats-form__bottom-wrapper">
            <div class="stats-form__topuser topuser-block">
               <div class="topuser-block__title">Список лучших пользователей</div>
               <div class="topuser-block__table">
                <table class="userstop">{topusers}</table>
               </div>
           </div>
        </div>
    </div>
</div>
</div>