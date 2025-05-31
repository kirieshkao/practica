<head>
  <!-- Кодировка страницы -->
  <meta charset="UTF-8">
  <!-- Настройка адаптивности под разные устройства -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Заголовок страницы в вкладке браузера -->
  <title>MathTools - О нас</title>
  <!-- Подключение шрифта Roboto с разных весов -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
  <!-- Подключение основного CSS-файла со стилями сайта -->
  <link href="/static/css/style.css" rel="stylesheet">
  <!-- Подключение библиотеки иконок Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>

<!-- Основной контент раздела "О нас" -->
<section class="section about-section">

  <div class="container">
    <!-- Заголовок раздела "О проекте MathTools" -->
    <h1 class="section-title">О проекте MathTools</h1>

    <div class="about-content">
      <!-- Карточка с миссией проекта -->
      <div class="about-card">
        <!-- Картинка миссии -->
        <div class="about-image">
          <img src="/static/images/about-mission.jpg" alt="Наша миссия">
        </div>
        <!-- Текст с описанием миссии -->
        <div class="about-text">
          <h2 class="about-title">Наша миссия</h2>
          <p>MathTools создан для того, чтобы сделать сложные методы анализа данных доступными каждому. Мы стремимся устранить барьеры между теорией и практикой, предоставляя удобные инструменты для решения реальных задач.</p>
          <p>Наша платформа особенно полезна для студентов, преподавателей и исследователей, которым необходимо быстро и точно анализировать данные без глубокого погружения в программирование.</p>
          <!-- Кнопка-переход к разделу команды -->
          <a href="#team" class="btn btn-primary">Наша команда</a>
        </div>
      </div>

      <!-- Вторая карточка с описанием методологии (с классом reverse для смены порядка элементов) -->
      <div class="about-card reverse">
        <!-- Картинка методологии -->
        <div class="about-image">
          <img src="/static/images/about-methods.jpg" alt="Методология">
        </div>
        <!-- Текст с описанием методов -->
        <div class="about-text">
          <h2 class="about-title">Методология</h2>
          <p>Все наши калькуляторы используют проверенные математические методы, соответствующие академическим стандартам:</p>
          <ul class="about-list">
            <li>Метод наименьших квадратов для регрессионного анализа</li>
            <li>Статистические критерии для оценки качества моделей</li>
            <li>Визуализация данных по принципам эффективной коммуникации</li>
          </ul>
        </div>
      </div>
    </div>

    <!-- Заголовок раздела "Наша команда" -->
    <h2 class="section-title" id="team">Наша команда</h2>

    <!-- Сетка с карточками участников команды -->
    <div class="team-grid">
      <!-- Карточка одного участника -->
      <div class="team-member">
        <!-- Фото участника -->
        <div class="member-photo">
          <img src="/static/images/kris.jpg" alt="Кристина Машкова">
        </div>
        <!-- Информация об участнике -->
        <div class="member-info">
          <h3 class="member-name">Кристина Машкова</h3>
          <p class="member-role">Разработчик</p>
          <p class="member-bio">Создает удобные и интуитивно понятные интерфейсы. Ответственная за реализацию калькулятора прогнозирования.</p>
          <!-- Контактная информация с иконкой почты -->
          <div class="member-contacts">
            <a href="mailto:kristina@mathtools.ru" class="contact-link">
              <i class="fas fa-envelope"></i> Email
            </a>
          </div>
        </div>
      </div>

      <!-- Аналогично карточки других участников -->
      <div class="team-member">
        <div class="member-photo">
          <img src="/static/images/egorr.jpg" alt="Егор Шепелев">
        </div>
        <div class="member-info">
          <h3 class="member-name">Егор Шепелев</h3>
          <p class="member-role">Разработчик</p>
          <p class="member-bio">Ответственный за реализацию калькулятора квадратичной регрессии.</p>
          <div class="member-contacts">
            <a href="mailto:egor@mathtools.ru" class="contact-link">
              <i class="fas fa-envelope"></i> Email
            </a>
          </div>
        </div>
      </div>

      <div class="team-member">
        <div class="member-photo">
          <img src="/static/images/maksim.jpg" alt="Максим Михайлов">
        </div>
        <div class="member-info">
          <h3 class="member-name">Максим Михайлов</h3>
          <p class="member-role">Разработчик</p>
          <p class="member-bio">Ответственный за реализацию калькулятора квадратичной регрессии.</p>
          <div class="member-contacts">
            <a href="mailto:maxim@mathtools.ru" class="contact-link">
              <i class="fas fa-envelope"></i> Email
            </a>
          </div>
        </div>
      </div>
    </div>

    <!-- Кнопка возврата на главную страницу -->
    <div class="back-to-home">
      <a href="/" class="btn btn-primary">
        <i class="fas fa-arrow-left"></i> Вернуться на главную
      </a>
    </div>
  </div>

  <!-- Подвал сайта -->
  <footer class="site-footer">
    <div class="container">
      <div class="footer-content">
        <!-- Логотип сайта и краткое описание -->
        <div class="footer-about">
          <div class="footer-logo">
            <i class="fas fa-square-root-alt"></i> MathTools
          </div>
          <p class="footer-description">
            Бесплатные онлайн-калькуляторы для статистического анализа и регрессионного моделирования
          </p>
        </div>

        <!-- Контактная информация в подвале -->
        <div class="footer-contact">
          <h4 class="footer-title">Контакты</h4>
          <ul class="footer-contact-info">
            <li><i class="fas fa-envelope"></i> support@mathtools.ru</li>
            <li><i class="fas fa-phone"></i> +7 (XXX) XXX-XX-XX</li>
            <li><i class="fas fa-map-marker-alt"></i> Россия, Москва</li>
          </ul>
        </div>
      </div>

      <!-- Нижняя часть подвала с копирайтом и ссылками на политику и условия -->
      <div class="footer-bottom">
        <div class="copyright">
          &copy; 2025 MathTools. Все права защищены.
        </div>
        <div class="footer-legal">
          <a href="/privacy">Политика конфиденциальности</a>
          <a href="/terms">Условия использования</a>
        </div>
      </div>
    </div>
  </footer>

</section>
