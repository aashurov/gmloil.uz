document.addEventListener('DOMContentLoaded', () => {
    const swiperews = new Swiper('.swiper-news', {
        loop: true,
        spaceBetween: 20,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
         autoplay: {
         delay: 10000,
     },
    });

    const swiperpopular = new Swiper('.swiper-popular', {
        loop: true,
        spaceBetween: 20,
        breakpoints: {
            1440: {
                slidesPerView: 5,
            },
            1024: {
                slidesPerView: 4,
            },
            768: {
                slidesPerView: 3,
            },
            576: {
                slidesPerView: 2,
            },
            320: {
                slidesPerView: 1,
            },
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });

    // SWIPER CLOSE

    const header = document.querySelector('#header'),
        height = window.getComputedStyle(header).height,
        w = window.innerWidth;
    document.querySelector('.h-height').style.cssText = `
    height: calc(${height} + 2px);
    `;

    // Открытие и закрытие модальных окон
    function openModalTrigger(modalOpen, modal, menuDrop) {
        const open = document.querySelector(modalOpen),
            modalTrigger = document.querySelector(modal),
            menuCatalog = document.querySelector(menuDrop);

        open.addEventListener('click', (e) => {
            e.preventDefault();
            modalTrigger.classList.toggle('active');
            if (menuCatalog) {
                menuCatalog.classList.toggle('active');
                scrollTop();
            }
        });

        document.addEventListener('click', (e) => {
            if (
                e.target.classList.contains('login-p') ||
                e.target.classList.contains('w-content') ||
                e.target.getAttribute('id') === 'login-close' ||
                e.target.classList.contains('drop-menu-overlay')
            ) {
                modalTrigger.classList.remove('active');
                if (menuCatalog) {
                    menuCatalog.classList.remove('active');
                }
            }
        });
    }

    openModalTrigger('#authorization', '.login-p');
    openModalTrigger('#price-l', '.w-content');
    // openModalTrigger("#catalog", ".h-catalog__burger", '.drop-menu-catalog');

    // Поднятие страницы вверх
    let scrollTopCounter = 0;

    function scrollTop() {
        scrollTopCounter += window.scrollY;
        document.documentElement.scrollBy(
            0, -document.documentElement.scrollHeight
        );
    }

    function scrollBottom() {
        document.documentElement.scrollBy(0, 500);
    }

    // scrollBottom()

    // Открытие и закрытие выпадающего меню
    function dropDownMenu(trigger, menuShow, activeClass, dMenu = null) {
        const clickTrigger = document.querySelector(trigger),
            menu = document.querySelector(menuShow),
            dropMenu = document.querySelector(dMenu);

        clickTrigger.addEventListener('click', (e) => {
            e.stopPropagation();
            menu.classList.toggle(activeClass);
            dropMenu.classList.toggle(activeClass);
        });

        document.addEventListener('click', (e) => {
            menu.classList.remove(activeClass);
            // dropMenu.classList.remove(activeClass)
        });
    }

    dropDownMenu('#phone', '.h-phone', 'allcontact-active');
    dropDownMenu('#phone-m', '.h-phone-m', 'allcontact-active');
    // dropDownMenu("#catalog", ".h-catalog__burger", "active", '.drop-menu-catalog');

    // WINDOW SCROLL

    window.addEventListener('scroll', (e) => {
        const scrolTop = document.querySelector('#scroll-top');
        let positionY = scrollY;
        positionY >= 500 ?
            scrolTop.classList.add('active') :
            scrolTop.classList.remove('active');

        scrolTop.addEventListener('click', (e) => {
            window.scrollBy(0, -document.documentElement.scrollHeight);
        });
    });

    // Устанавливает активный класс на нажатую ссылку

    const linksHeaderTop = document.querySelectorAll('.h-nav__link');

    linksHeaderTop.forEach((item) => {
        item.addEventListener('click', (e) => {
            const elementId = e.target.dataset.id;

            linksHeaderTop.forEach((el) => {
                el.classList.remove('active');
                document
                    .querySelector(`[data-id='${elementId}']`)
                    .classList.add('active');
            });
        });
    });

    // console.log(window.location.href);   // Текущая ссылка страницы

    // Открываем каталог меню

    function showCataloMenu(
        triggerMenu,
        burgerChange,
        menu,
        leftElements,
        rightElements
    ) {
        const trigger = document.querySelector(triggerMenu),
            burger = document.querySelector(burgerChange),
            menuOpen = document.querySelector(menu),
            links = document.querySelectorAll(leftElements),
            elements = document.querySelectorAll(rightElements);

        // Удаление активного класса каждый раз при наведении мыши
        function delActiveClass(linksElement, activeClass) {
            linksElement.forEach((link) => {
                link.classList.remove(activeClass);
            });
        }

        // Устанавливаем атрибуты для навигационных элементов
        function setAttribute(target, category) {
            target.forEach((item, i) => {
                item.setAttribute('data-target', i++);
            });

            category.forEach((item, i) => {
                item.setAttribute('data-category', i++);
            });
        }

        setAttribute(links, elements);

        trigger.addEventListener('click', (e) => {
            if (window.scrollY >= parseInt(height.slice(0, -2))) scrollTop();
            delActiveClass(links, 'catalog-menu__shadow');
            delActiveClass(elements, 'active');
            elements[0].classList.add('active');
            links[0].classList.add('catalog-menu__shadow');
            burger.classList.toggle('active');
            menuOpen.classList.toggle('active');
        });

        // Добавляем и сохраняем активный классна навигационных ссылках
        links.forEach((link) => {
            link.addEventListener('mouseover', (e) => {
                const dataTarget = e.target.dataset.target;
                // const dataTarget = link.getAttribute('data-target');
                delActiveClass(links, 'catalog-menu__shadow');
                delActiveClass(elements, 'active');
                link.classList.add('catalog-menu__shadow');
                document
                    .querySelector(`[data-category='${dataTarget}']`)
                    .classList.add('active');
            });
        });

        document.addEventListener('click', (e) => {
            if (e.target.classList.contains('drop-menu-overlay')) {
                burger.classList.toggle('active');
                menuOpen.classList.toggle('active');
            }
        });
    }

    // showCataloMenu(
    //     "#catalog",
    //     "#burger-change",
    //     ".drop-menu-catalog",
    //     ".catalog-menu__item",
    //     ".catalog-menu-right__row"
    // );

    w >= 768 ?
        showCataloMenu(
            '#catalog',
            '#burger-change',
            '.drop-menu-catalog',
            '.catalog-menu__item',
            '.catalog-menu-right__row'
        ) :
        showMenuMobile('.h-catalog', '.drop-menu-catalog', '.h-catalog__burger');

    // Функция срабатывает только на мобильном разрешении при ширине экрана не более 768px
    function showMenuMobile(trigger, menuShowTrigger, burger) {
        const menuShow = document.querySelector(menuShowTrigger),
            burgerActive = document.querySelector(burger);

        document.querySelector(trigger).addEventListener('click', (e) => {
            if (window.scrollY >= parseInt(height.slice(0, -2))) scrollTop();

            burgerActive.classList.toggle('active');
            menuShow.classList.toggle('active');
        });

        document.addEventListener('click', (e) => {
            if (e.target.classList.contains('drop-menu-overlay')) {
                burgerActive.classList.toggle('active');
                menuShow.classList.toggle('active');
            }
        });
    }

    // Панель навигации по вкладкам полной новости

    const navLink = document.querySelectorAll('.nav-page__btn'),
        tabContent = document.querySelectorAll('.tab-content__data');

    function removeActiveTabs(tabs) {
        tabs.forEach((link) => {
            link.classList.remove('active');
        });
    }

    function setCurrentTab() {
        navLink.forEach((link) => {
            link.addEventListener('click', (e) => {
                const idLink = e.target.getAttribute('id');

                removeActiveTabs(navLink);
                removeActiveTabs(tabContent);

                document.querySelector(`#${idLink}`).classList.add('active');
                document
                    .querySelector(`[data-content='${idLink}']`)
                    .classList.add('active');
            });
        });
    }

    setCurrentTab();

    // Изменение класа активных вкладок на мобильном
    // function changeClassColor(linkItem, bodyChangeColor) {
    //     const links = document.querySelectorAll(linkItem),
    //         bodyLink = document.querySelectorAll(bodyChangeColor);

    //     links.forEach((link, i) => {
    //         link.addEventListener('click', (e) => {
    //             document.querySelector
    //         });
    //     });
    // }

    // changeClassColor('[data-m]', '.h-bar__data');

    
     const gallery = document.querySelectorAll(".gallery-hidden a"),
            swiperImg = document.querySelectorAll(".swiper-wrapper"),
            arr = [];

        gallery.forEach(item => {
            arr.push(item.cloneNode(true));
        })


        arr.forEach(item => {
            swiperImg[0].innerHTML += `<div class="swiper-slide"><div class="swiper-slide-container"><a href="${item.href}" onclick="return hs.expand(this, { slideshowGroup: 'xf_1_izo' })" target="_blank"><img src="${item}" class="img-main"z></a></div></div>`;
            swiperImg[1].innerHTML += `<div class="swiper-slide"><div class="swiper-slide-container img-thumbs-container"><img src="${item}" class="img-thumbs"></div></div>`;
        });





        var swiper = new Swiper(".mySwiper", {
            spaceBetween: 20,
            slidesPerView: 4,
            freeMode: true,
            watchSlidesProgress: true,
        breakpoints: {
                        1200: {
                slidesPerView: 5,
            },
            1024: {
                slidesPerView: 8,
            },
            768: {
                slidesPerView: 6,
            },
                                                600: {
                slidesPerView: 4,
            },
                                    468: {
                slidesPerView: 3,
            },
                        320: {
                slidesPerView: 2,
            },
            
        },
        });
        var swiper2 = new Swiper(".mySwiper2", {
            spaceBetween: 10,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            thumbs: {
                swiper: swiper,
            },
        });
    
   /* Укорачиваем длинну заголовков */ 
    
function cutExcessText(element) {
  const titleLenght = document.querySelectorAll(element);

  titleLenght.forEach((item) => {
    if (item.textContent.length >= 60) item.textContent = `${item.textContent.slice(0, 60)}...`;
  });
}

cutExcessText(".short-block__title");
cutExcessText(".block-cart__title");

});