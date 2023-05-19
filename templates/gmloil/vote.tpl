<div class="vote-block">
    <div class="vote-block__wrapper">
        <div class="vote-block__title">{title}</div>

        <div class="vote-block__options">
            [votelist]
            <form method="post" name="vote">[/votelist] {list} [voteresult]
                <div class="vote-block__general-vote">Всего проголосовало: {votes}</div>[/voteresult] [votelist]
                <input type="hidden" name="vote_action" value="vote" />
                <input type="hidden" name="vote_id" id="vote_id" value="{vote_id}" />

                <div class="vote-block__submit">
                    <button class="vote-block__btn btn-m" type="submit" onclick="doVote('vote'); return false;">Голосовать</button>
                </div>
                <div class="vote-block__details flex">
                    <button class="vote-block__result" type="button" onclick="doVote('results'); return false;"><i class='bx bx-message-square-detail vote-block__icon'></i> Результаты</button>
                    <button class="vote-block__all-v" type="submit" onclick="ShowAllVotes(); return false;"><i class='bx bx-line-chart-down vote-block__icon'></i> Все опросы</button>
                </div>
            </form>
            [/votelist]
        </div>
    </div>
</div>