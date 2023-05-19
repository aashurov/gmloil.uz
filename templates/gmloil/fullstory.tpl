<article class="product">
    <div class="product__wrapper">

        <div class="product__title">{title}[group=1][edit] <i class="ri-fingerprint-2-line"></i> [/edit][/group]</div>
        <div class="product__data-top data-product">
            <div class="data-product__left">
                [rating-type-1]
                <div class="data-product__reting"></div>
                [/rating-type-1]
                <div class="data-product__comments">
                    <i class="ri-discuss-line"></i> ({comments-num}) отзывов
                </div>
            </div>

            <div class="data-product__right">
  
                <div class="data-product__article">
                    <span></span>
                </div>
           
                <div class="data-product__snippetcode">
                    <span></span>
                </div>
              
            </div>
        </div>
        <div class="product__data-main product-main">
            <div class="product-main__wrapper">
                <div class="product-main__row">
                    <div class="product-main__column product-main__im1 photo-swiper">
                        <div class="product-main__image-preview">
                            <!--Галерея изображений начало-->
                            <div class="gallery-hidden" style="display: none">
                                <a href="{image-1}"><img data-src="{image-1}" alt="{title}" /></a>
                                [xfvalue_galery_photo]
                            </div>

                            <div style="
									--swiper-navigation-color: #fff;
									--swiper-pagination-color: #fff;
								" class="swiper mySwiper2">
                                <div class="swiper-wrapper"></div>
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            </div>

                            <div thumbsSlider="" class="swiper mySwiper">
                                <div class="swiper-wrapper"></div>
                            </div>
                            <!--Галерея изображений конец-->
                        </div>
                    </div>
                    <div class="product-main__column product-main__sp">
                        <div class="product-main__specifications specifications">
                            <div class="specifications__wrappe">
                                <div class="specifications__title">Основные характеристики</div>
                                <ul class="specifications__list">
                                    [xfgiven_article]
                                    <li class="specifications__item">
                                        <div class="specifications__title-text">
                                            <span>Артикул:</span>
                                        </div>
                                        <div class="specifications__data-s">[xfvalue_article]</div>
                                    </li>
                                    [/xfgiven_article] [xfgiven_barcode]
                                    <li class="specifications__item">
                                        <div class="specifications__title-text">
                                            <span>Штрих-код:</span>
                                        </div>
                                        <div class="specifications__data-s">[xfvalue_barcode]</div>
                                    </li>
                                    [/xfgiven_barcode]
                                    <li class="specifications__item">
                                        <div class="specifications__title-text">
                                            <span>Раздел:</span>
                                        </div>
                                        <div class="specifications__data-s">{category}</div>
                                    </li>
                                                    [xfgiven_bar]
                                    <li class="specifications__item">
                                        <div class="specifications__title-text">
                                            <span>Емкость:</span>
                                        </div>
                                        <div class="specifications__data-s">[xfvalue_bar]</div>
                                    </li>
                                    [/xfgiven_bar][xfgiven_type]
                                    <li class="specifications__item">
                                        <div class="specifications__title-text">
                                            <span>Тип:</span>
                                        </div>
                                        <div class="specifications__data-s">[xfvalue_type]</div>
                                    </li>[/xfgiven_type]
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="product-main__column product-main__b">
                        <div class="product-main__data-buy data-buy">
                            <div class="data-buy__wrapper">
                                <div class="data-buy__pay">
                                    <div class="pay-block">
                                        <div class="pay-block__price">[xfvalue_cena] <sub> SUM </sub></div>
                                        <div class="pay-block__availability"></div>
                                    </div>
                                    <div class="cart-block">
                                    <div class="cart-block__add">Паспорт продукта ></div>

                                      <div class="button"><a class="llink" href="https://t.me/gmloil" style="color:white;"><i class="ri-shopping-cart-2-line"></i></a></div>
                                        <!--<div class="cart-block__addtooneclick">
                                            <i class="ri-fingerprint-2-line" title=""></i>
                                        </div>-->
[xfgiven_tds]
<div class="cart-block__addtooneclick"><div class="load-file"><div class="load-file__icon"><i class="ri-file-pdf-line"></i>
</div>
<a href="https://gmloil.uz/docs/pdf/[xfvalue_tds].pdf" class="ri-fingerprint-2-line" target="_blank"></a>
</div>
</div>
[/xfgiven_tds]

                                        </div>
                                    </div>
                                </div> 
                                <div class="data-buy__call">
                                    <div class="data-buy__wrapper-call">
                                        <a href="https://t.me/gmloil" data-uf-open="/engine/ajax/uniform/uniform.php"
                                            data-uf-settings='{"formConfig": "callback"}' class="data-buy__link-b">
                                            <div class="data-buy__text">
                                                <span><i class="ri-shopping-bag-line"></i></span>
                                                Запросить стоимость товара
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="data-buy__delivery">
                                    <div class="data-buy__title-b">Информация о доставке</div>
                                    <div class="data-buy__sh">
                                        <i class="ri-store-line"></i>
                                        <a class="data-buy__link">Самовывоз со склада</a>
                                        <span></span>
                                    </div>
                                    <div class="data-buy__t-company">
                                        <i class="ri-truck-line"></i>
                                        <a class="data-buy__link">Доставка транспортной компанией</a>
                                    </div>
                                    <div class="data-buy__buy">
                                        <i class="ri-money-dollar-box-line"></i>
                                        <a class="data-buy__link" target="_link">Перечесление, наличными, корпоративной картой.</a>
                                    </div>
                                </div>
                                <div class="data-b">
                                    <div class="data-b__row">
                                        [add-favorites]
                                        <div class="data-b__column">
                                            <i class="ri-bookmark-line" title="Добавить в избранное"></i>
                                        </div>
                                        [/add-favorites] [del-favorites]
                                        <div class="data-b__column">
                                            <i class="ri-bookmark-2-line" title="Удалить из избранного"></i>
                                        </div>
                                        [/del-favorites]
                                        <div class="data-b__column">
                                            <a href="#" data-uf-open="/engine/ajax/uniform/uniform.php"
                                                data-uf-settings='{"formConfig": "callback"}'><i class="ri-phone-line"
                                                    title="Заказать обратный звонок"></i></a>
                                        </div>
                                        [complaint]
                                        <div class="data-b__column">
                                            <i class="ri-notification-3-line" title="Пожаловаться на товар"></i>
                                        </div>
                                        [/complaint]
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product__section-data section-data">
            <div class="section-data__pages">
                <div class="section-data__nav-page nav-page">
                    <ul class="nav-page__list">
                        <li class="nav-page__item">
                            <button class="nav-page__btn active" id="thumb-product">
                                О товаре
                            </button>
                        </li>
                        <li class="nav-page__item">
                            <button class="nav-page__btn" id="thumb-specifications">
                                Характеристики
                            </button>
                        </li>
                      [xfgiven_sertification]
                        <li class="nav-page__item">
                            <button class="nav-page__btn" id="thumb-certificates">
                                Сертификаты
                            </button>
                        </li>
                        [/xfgiven_sertification] [xfgiven_youtube]
                        <li class="nav-page__item">
                            <button class="nav-page__btn" id="thumb-video">
                                Видео-обзор
                            </button>
                        </li>
                        [/xfgiven_youtube]
                        <li class="nav-page__item">
                            <button class="nav-page__btn" id="thumb-comment">
                               Оставить отзыв о продукте
                            </button>
                        </li>
                    </ul>
                </div>
                <div class="section-data__tab-content tab-content">
                    <div class="tab-content__wrapper">
                        <div class="tab-content__data ab-product active" data-content="thumb-product">
                            {full-story}
                            [xfgiven_description][xfvalue_description][/xfgiven_description]
                        </div>
                        <div class="tab-content__data" data-content="thumb-specifications">
                            <div class="ab-spec">
                                <div class="ab-spec__row">
                                    <div class="ab-spec__table">
                                        [xfgiven_specifications][xfvalue_specifications][/xfgiven_specifications]
                                    </div>
                                    <div class="ab-spec_data">
                                        [xfgiven_postavka]
                                        <div class="ab-spec__equipment">[xfvalue_postavka]</div>
                                        [/xfgiven_postavka] [xfgiven_info]
                                        <div class="ab-spec__information">[xfvalue_info]</div>
                                        [/xfgiven_info]
                                    </div>
                                </div>
                            </div>
                        </div>
                
                        <div class="tab-content__data ab-docs" data-content="thumb-documents">
                            <div class="load-file">
                                <div class="load-file__icon">
                                    <i class="ri-file-pdf-line"></i>
                                </div>
                                <a href="https://gmloil.uz/docs/pdf/[xfvalue_tds].pdf" class="load-file__pdf"
                                    target="_blank">Скачать инструкцию «{title}»</a>
                            </div>
                        </div>
                      [xfgiven_sertification]
                        <div class="tab-content__data ab-cert" data-content="thumb-certificates">
                            <div class="load-file">
                                <div class="load-file__icon">
                                    <i class="ri-file-pdf-line"></i>
                                </div>
                                <a href="https://gmloil.uz/docs/pdf/[xfvalue_sertification].pdf" class="load-file__pdf"
                                    target="_blank">Скачать сертификат для «{title}»</a>
                            </div>
                        </div>
                        [/xfgiven_sertification] [xfgiven_youtube]
                        <div class="tab-content__data ab-cert" data-content="thumb-video">
                            <iframe width="100%" height="500" src="[xfvalue_youtube]" frameborder="0"
                                allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                        </div>
                        [/xfgiven_youtube]
                        <div class="tab-content__data ab-delivery" data-content="thumb-comment">
                            {addcomments}{comments}{navigation}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Популярные товары из этой категории-->
        <div class="last-arrivals">
            <div class="last-arrivals__title section-title">
                Популярные товары из этой категории
            </div>
            <div class="last-arrivals__wrapper">
                {related-news}
               <!--{custom category="1-100" limit="5" template="modules/last-arrivals" cache="no"}-->
            </div>
        </div>
    </div>
</article>