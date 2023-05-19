<!DOCTYPE html>
<html lang="ru">

<head>
    {headers}
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="{THEME}/images/favicon.png" />
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <link href="{THEME}/css/style.css" type="text/css" rel="stylesheet" />
    <link href="{THEME}/css/engine.css" type="text/css" rel="stylesheet" />
</head>


<body>

    <!--==================== HEADER ====================-->
    <header class="header" id="header" data-header>
        {include file="modules/header.tpl"}
    </header>
    <div class="h-height"></div>
    <!--==================== HEADER CLOSE====================-->

    <!--==================== MAIN ====================-->
    <main class="main">
        [not-available=main][not-category=497]<div class="speedbar container">{speedbar}</div>
        [/not-category][/not-available][available=main]
        
        <!--==================== SLIDER SWIPER ====================-->
        <section class="news slider-swiper" id="news">
            <div class="container">
                <div class="news__wrapper wb-flex">
                    <div class="n-block">
                        <div class="n-block__wrapper">
                            <div class="swiper-news">
                                 <div class="swiper-wrapper n-block__padding">

 <div class="n-block__slider swiper-slide"> <img src="https://i.ibb.co/cr394hF/1.png" alt="" class="n-block__img"></div>
 <div class="n-block__slider swiper-slide"> <img src="https://i.ibb.co/Chr9XG1/image.png" alt="" class="n-block__img"></div>
 <div class="n-block__slider swiper-slide"> <img src="https://i.ibb.co/DPBpNmG/image.png" alt="" class="n-block__img"></div>
 <div class="n-block__slider swiper-slide"> <img src="https://i.ibb.co/MDMqJP0/3.png" alt="" class="n-block__img"></div>

                   
                                <div class="n-block__pagination swiper-pagination"></div>

                                <div class="swiper-button-prev"></div>
                                <div class="swiper-button-next"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--==================== BENEFIT ====================-->
        <section class="benefit" id="benefit">
            <div class="container">
                <h3 class="benefit__title section-title">Почему стоит покупать у нас</h3>
                {include file="modules/benefit.tpl"}
            </div>
        </section>
        <!--==================== POPULAR CATEGORY ====================-->
        <section class="category" id="category">
            <div class="container">
                <h3 class="category__title section-title">Категории продукта</h3>
                {include file="modules/popular-category.tpl"}
            </div>
        </section>
        <!--==================== LAST ARRIVALS ====================-->
        <section class="last-arrivals" id="last-arrivals">
            <div class="container">
                <h3 class="last-arrivals__title section-title">Последние поступления товаров</h3>
                <div class="last-arrivals__wrapper">
                    {custom category="1,2,3,4,5,6,7,8,9,10,11,12,13,15,16,17" limit="10" template="modules/last-arrivals" }
                </div>
            </div>
        </section>
        <!--==================== POPULAR PRODUCT ====================-->
        <section class="popular" id="popular">
            <div class="container">
                <h3 class="popular__title section-title">Интересное из новостей</h3>

                <div class="popular__wrapper">
                    <div class="swiper-popular">
                        <div class="swiper-wrapper popular__row">
                            {custom order="reads" template="modules/popular-product" from="0" limit="5" cache="yes"}
                        </div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>

                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>
        </section>

        <!--==================== REVIEWS ====================-->
        <section class="reviews" id="reviews">
            <div class="container">
                <h3 class="reviews__title section-title">Полезная информация</h3>
                <div class="reviews__wrapper">
                    <div class="r-block-g">
                        {custom category="18" limit="6" template="modules/reviews" }
                    </div>
                </div>
            </div>
        </section>[/available]

        <!--==================== CONTENT BLOCK ====================-->
        [not-category=18]{info}[/not-category] [not-available=main]
        <div class="block-content">
            <div class="container">
                [available=cat]{include file="modules/menu-categories.tpl"}[/available]
                [not-category=37]<div id="dle-content">{content}</div>[/not-category]
            </div>
        </div>
        [/not-available]

        <!--==================== DESCRIPTION WEBSITE ====================-->
        <div class="desc-website" id="recomented">
            <div class="container">
                {include file="modules/desc-website.tpl"}
            </div>
        </div>
    </main>
    <!--==================== MAIN CLOSE ====================-->

    <!--==================== FOOTER ====================-->
    <footer class="footer">
        <div class="footer__body container">
            {include file="modules/footer.tpl"}
        </div>
    </footer>
    <!--==================== FOOTER CLOSE ====================-->

    <!--==================== SCROLL TOP ====================-->
    <div class="scroll-top" id="scroll-top">
        <div class="scroll-top__wrapper">
            <i class="ri-arrow-up-s-line"></i>
        </div>
    </div>

    <!--==================== DOWNLOAD PRICE ====================-->
    <div class="w-content" id="price-list">
        {include file="modules/w-price.tpl"}
    </div>

    <!--==================== DROP-DOWN MENU ====================-->
    <div class="drop-menu-catalog" data-menu='close'>
        {include file="modules/drop-menu-catalog.tpl"}
    </div>

    {login} {jsfiles}
    <!--==================== MAIN JS ====================-->
    <script src="{THEME}/js/libs.js"></script>
    <!--==================== SWIPER JS ====================-->
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <!--==================== DLE UniForm ====================-->

    <!--==================== AJAX ====================-->
    {AJAX}
    <!--==================== Yandex.Metrika ====================-->
</body>

<!-- START WWW.UZ TOP-RATING --><SCRIPT language="javascript" type="text/javascript">
<!--
top_js="1.0";top_r="id=46464&r="+escape(document.referrer)+"&pg="+escape(window.location.href);document.cookie="smart_top=1; path=/"; top_r+="&c="+(document.cookie?"Y":"N")
//-->
</SCRIPT>
<SCRIPT language="javascript1.1" type="text/javascript">
<!--
top_js="1.1";top_r+="&j="+(navigator.javaEnabled()?"Y":"N")
//-->
</SCRIPT>
<SCRIPT language="javascript1.2" type="text/javascript">
<!--
top_js="1.2";top_r+="&wh="+screen.width+'x'+screen.height+"&px="+
(((navigator.appName.substring(0,3)=="Mic"))?screen.colorDepth:screen.pixelDepth)
//-->
</SCRIPT>
<SCRIPT language="javascript1.3" type="text/javascript">
<!--
top_js="1.3";
//-->
</SCRIPT>
<SCRIPT language="JavaScript" type="text/javascript">
<!--
top_rat="&col=340F6E&t=ffffff&p=BD6F6F";top_r+="&js="+top_js+"";document.write('<img src="http://cnt0.www.uz/counter/collect?'+top_r+top_rat+'" width=0 height=0 border=0 />')//-->
</SCRIPT><NOSCRIPT><IMG height=0 src="http://cnt0.www.uz/counter/collect?id=46464&pg=http%3A//uzinfocom.uz&col=340F6E&t=ffffff&p=BD6F6F" width=0 border=0 /></NOSCRIPT><!-- FINISH WWW.UZ TOP-RATING -->  

<!--LiveInternet counter--><a href="https://www.liveinternet.ru/click"
target="_blank"><img id="licntD499" width="88" height="15" style="border:0" 
title="LiveInternet: показано число посетителей за сегодня"
src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAEALAAAAAABAAEAAAIBTAA7"
alt=""/></a><script>(function(d,s){d.getElementById("licntD499").src=
"https://counter.yadro.ru/hit?t26.6;r"+escape(d.referrer)+
((typeof(s)=="undefined")?"":";s"+s.width+"*"+s.height+"*"+
(s.colorDepth?s.colorDepth:s.pixelDepth))+";u"+escape(d.URL)+
";h"+escape(d.title.substring(0,150))+";"+Math.random()})
(document,screen)</script><!--/LiveInternet-->

</html>