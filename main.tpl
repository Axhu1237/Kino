<!DOCTYPE html>
<html lang="ru">

<head>
    {headers}

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="{THEME}/images/favicon.ico">
    <link rel="stylesheet" href="{THEME}/css/engine.css" />
    <link rel="stylesheet" href="{THEME}/css/jquery.mCustomScrollbar.min.css" />
    <link rel="stylesheet" href="{THEME}/css/swiper-bundle.css" />
    <link rel="stylesheet" href="{THEME}/css/style.css" />
    <link rel="stylesheet" href="{THEME}/css/jquery.fancybox.min.css" />
    <link rel="stylesheet" href="{THEME}/css/filter-xf.css" />
    {jsfiles}
    <script src="{THEME}/js/jquery.mCustomScrollbar.min.js"></script>
    <script src="{THEME}/js/jquery.mousewheel-3.0.6.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.15/swiper-bundle.min.js" ></script>
    <script src="{THEME}/js/main.js"></script>
    <script src="{THEME}/js/filter-xf.js"></script>
</head>

<body>
    <div class="container">

        <dialog style="display: none;" id="cat">
      {include file="cat-menu.tpl"}

        </dialog>

        <header>
            <nav class="nav_link">
                <ul class="nav_ul_link">
                    <li class="nav_li_link"><a href="/">Домой</a></li>
                    <li class="nav_li_link"><a href="#">Ссылка</a></li>
                    <li class="nav_li_link"><a href="#">Ссылка</a></li>
                    <li class="nav_li_link"><a href="#">Ссылка</a></li>
                    <li class="nav_li_link"><a href="#">Ссылка</a></li>

                </ul>
            </nav>

        </header>

        <div class="logo_block">
            <a href="/" class="logo">LOGO</a>
            <button class="search-button">Поиск</button>
            <button class="filter-button" type="button">Фильтр</button>
            <button data-fancybox data-src="#auth" href="javascript:;" class="auth-button" type="button">Авторизация</button>

            <button  data-fancybox data-src="#cat" href="javascript:;"  class="button_menu" type="button">Категорий</button>

        </div>
        <div class="search-box">
            <form class="search__form active" method="post">
                <input type="hidden" name="do" value="search">
                <input type="hidden" name="subaction" value="search">
                <button type="submit" title="Найти"></button>
                <input class="f_input" id="story" name="story" placeholder="Введите слово для поиска..." type="text" autocomplete="off">

            </form>
        </div>

        <div class="filter_box">

            {include file="main-filter.tpl"}

        </div>

        <main class="full">

            <div class="aling-center">
                [available=main|cat]
                <div class="cat_block">
                     <!--  "Заголовки, описания, метатеги" заголовок для страницы -->
                    <h1 class="main_h1">
                    {page-title}
                    </h1>

                    <div class="all_cat_num">{allcount} материалов </div>

                </div> [/available]
               
                [available=main]
                   <!-- Главная страница(слайдеры и инфо) -->
              {include file="main_page.tpl"}
                   <!-- Главная страница(слайдеры и инфо) -->
                [/available]

                [not-available=main]

                {info}
                {content}

                [/not-available]

                <!-- SEO-текста -->
                {include file="seotext.tpl"} 
                   <!-- SEO-текста -->

            </div>
            <footer>
                <div class="corp">
                    <a href="#!">Обратная связь</a>
					<a href="#!">Соглашение</a>
					<a href="#!">Карта сайта</a>
					<a href="#!">Информация для правообладателей</a>
                </div>
                 <!-- Баннер -->
                <div class="banner_stat">
                    <img src="https://number0n3-team.do.am/img/88x31.png" alt="">
                </div>

            </footer>
        </main>
 <!-- Форма входа и профиль -->
        <div style="display: none;" id="auth">
            {login}
        </div>

    </div>
     [available=main|cat|showfull|search|userinfo|static]
     <style>
                .mCustomScrollBox {
                    height: auto !important;
                }

            </style>
 [/available]

    {AJAX}

</body>

</html>