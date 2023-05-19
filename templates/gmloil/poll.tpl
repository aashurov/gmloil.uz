<div class="poll-block">
    <h3 class="poll-block__title">{question}</h3>

    <div class="poll-block__list-item">
        {list}
    </div>

    [voted]
    <div class="poll-block__vote-p">Проголосовало: {votes}</div>
    [/voted] [not-voted]
    <button title="Голосовать" class="btn-m" type="submit" onclick="doPoll('vote', '{news-id}'); return false;"><b>Голосовать</b></button>
    <button title="Результаты опроса" class="btn-m" type="button" onclick="doPoll('results', '{news-id}'); return false;">
        <span class="poll-block__result-vote">Результаты опроса</span>
    </button> [/not-voted]
    <div class="poll-block__other-question"><a href="#" onclick="ShowAllVotes(); return false;">Другие опросы...</a></div>
</div>