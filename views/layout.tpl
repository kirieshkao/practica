<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{title}}</title>
    <!-- Стили теперь подключаются в каждом шаблоне -->
</head>
<body>
    <!-- Шапка с навигацией -->
    <header class="header">
        <nav class="navbar">
            <a href="/" class="logo">
                <img src="/static/images/logo.png" alt="MathTools Logo">
                MathTools
            </a>
            
            <ul class="main-menu">
                <li><a href="/calculator1"><i class="fas fa-chart-line"></i> Линейная регрессия</a></li>
                <li><a href="/calculator2"><i class="fas fa-chart-bar"></i> Квадратичная регрессия</a></li>
                <li><a href="/calculator3"><i class="fas fa-balance-scale"></i> Сравнение моделей</a></li>
                <li><a href="/about"><i class="fas fa-users"></i> О нас</a></li>
            </ul>
        </nav>
    </header>

    <!-- Основное содержимое -->
    {{!base}}

    <!-- Подвал -->
    <footer class="footer">
        <div class="container">
            <div class="footer-links">
                <a href="/">Главная</a>
                <a href="/about">О нас</a>
                <a href="#">Политика конфиденциальности</a>
                <a href="#">Контакты</a>
            </div>
            <p>© 2023 MathTools. Все права защищены.</p>
        </div>
    </footer>
</body>
</html>