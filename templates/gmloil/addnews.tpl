<div class="container-data">
<div class="form-addnews">
	<h1>Добавить Новость</h1>
	<div class="form-addnews__add-title flex">
		<label for="title">Заголовок:</label>
		<input type="text" id="title" name="title" value="{title}" maxlength="150" placeholder="Введите заголовок" required />
	</div>
	<div class="form-addnews__details flex">
        <input class="btn-m details-add__column" title="Найти похожие" onclick="find_relates(); return false;" type="button" value="Найти похожие" />
        <a href="#" class="button btn-m details-add__column" onclick="$('.vote-block').toggle();return false;">Добавить опрос</a>
	</div>
    <div id="related_news"></div>
	<div class="form-addnews__vote vote-block" style="display:none;">
		<div class="vote-block__title">
			<label>Заголовок:</label>
			<input type="text" name="vote_title" value="{votetitle}" maxlength="150" placeholder="Заголовок опроса" />
		</div>
		<div class="vote-block__question">
			<label>Сам вопрос:</label>
			<input type="text" name="frage" value="{frage}" maxlength="150" placeholder="Введите желаемый вопрос" />
		</div>
		<div class="vote-block__textarea">
			<label>Варианты ответов (с новой строки):</label>
			<textarea name="vote_body" rows="10">{votebody}</textarea>
		</div>
        <div class="vote-block__checks">
            <input type="checkbox" name="allow_m_vote" value="1" {allowmvote}>
            <label>Разрешить выбор нескольких вариантов</label>
        </div>
	</div>
	[urltag]
	<div class="form-addnews__url-article flex">
		<label for="alt_name">URL статьи:</label>
		<input type="text" name="alt_name" value="{alt-name}" maxlength="150" placeholder="url статьи" />
	</div>
	[/urltag]
	<div class="form-addnews__category-selection">
		<label>Выбор категории:</label>
		{category}
	</div>
	<div class="form-addnews__short-news">
		<label>Кратка статья:</label>
		[not-wysywyg]
            {bbcode}
            <textarea name="short_story" id="short_story" onfocus="setFieldName(this.name)" rows="10">{short-story}</textarea>
		[/not-wysywyg] 
		{shortarea}
	</div>
	<div class="form-addnews__full-news">
		<label>Статья целиком:</label>
		[not-wysywyg]
            {bbcode}
            <textarea name="full_story" id="full_story" onfocus="setFieldName(this.name)" rows="20">{full-story}</textarea>
		[/not-wysywyg] 
		{fullarea}
	</div>
	<div class="form-addnews__xfield"><table class="tableform">{xfields}</table></div>
	<div class="form-addnews__keywords">
		<label for="tags">Ключевые слова:</label>
        <input type="text" name="tags" id="tags" value="{tags}" maxlength="150" autocomplete="off" />
	</div>
	<div class="form-addnews__main-tags">{admintag}</div>
	[question]
	<div class="form-addnews__question">
		<label>Вопрос:</label>
		<div class="form-addnews__secur"><div style="margin-bottom:10px;">{question}</div>
        <input type="text" name="question_answer" placeholder="Впишите ответ на вопрос" required />
		</div>
	</div>
	[/question]
	[sec_code]
	<div class="form-addnews__checked-img">
		<label>Введите код с картинки:</label>
		<div class="form-addnews__secr">
            <input type="text" name="sec_code" id="sec_code" placeholder="Впишите код с картинки" maxlength="45" required />{sec_code}
		</div>
	</div>
	[/sec_code]
	[recaptcha]
	<div class="form-addnews__checked-words">
		<label>Введите два слова с картинки:</label>
		<div class="form-addnews__secur">
			{recaptcha}
		</div>
	</div>
	[/recaptcha]
    <div class="form-addnews__submit">
        <button class="btn-m" name="add" type="submit">Отправить</button>
        <button class="btn-m" name="nview" onclick="preview()" type="submit">Просмотр</button>
    </div>
</div>
</div>