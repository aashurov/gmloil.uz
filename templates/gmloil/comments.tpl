<div class="container-data">
[aviable=lastcomments]
<div class="block-comment-last">{news_title}</div>[/aviable]

<div class="block-comment">
    <div class="block-comment__body">
        <div class="block-comment__image">
            <img class="block-comment__img" src="{foto}" alt="{login}">
        </div>
        <div class="block-comment__wrapper-text">
            <div class="block-comment__top">
                <span class="block-comment__author">{author}</span>
               <!-- [commentsgroup=1]<span>{group-name}</span>[/commentsgroup] -->
                <span class="block-comment__date">{date}</span>
            </div>
            <div class="block-comment__text-comment">
                {comment}
            </div>
            <div class="block-comment__bottom">
                [reply]
                <div class="block-comment__answer">
                    Ответить
                </div>[/reply]
                <div class="block-comment__rating">
                    [rating-type-3] [rating-plus]
                    <i class="ri-heart-line"></i>[/rating-plus]
                    <div class="block-comment__rating-3">{rating}</div> [rating-minus]
                    <i class="ri-dislike-fill"></i>[/rating-minus] [/rating-type-3]
                </div>
            </div>
        </div>
    </div>
</div>
</div>