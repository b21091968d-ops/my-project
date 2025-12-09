# ===== Скрипт для автоматического создания 66 страниц курсов и обновления index.html =====

$courseList = @(
    @{ Name="Профессия - Веб-дизайнер"; Link="https://ihclick.ru/?p=231669&o=54260&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Java-разработчик"; Link="https://ihclick.ru/?p=231669&o=58879&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Frontend-разработчик"; Link="https://ihclick.ru/?p=231669&o=58890&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - SMM-специалист"; Link="https://ihclick.ru/?p=231669&o=60079&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - UX/UI-дизайнер"; Link="https://ihclick.ru/?p=231669&o=138409&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Дизайнер"; Link="https://ihclick.ru/?p=231669&o=138427&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Разработчик на С++"; Link="https://ihclick.ru/?p=231669&o=269844&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Менеджер маркетплейсов"; Link="https://ihclick.ru/?p=231669&o=269877&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Курс - Дизайнер интерьеров"; Link="https://ihclick.ru/?p=231669&o=273217&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Python-разработчик"; Link="https://ihclick.ru/?p=231669&o=273226&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Разработчик"; Link="https://ihclick.ru/?p=231669&o=273231&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - 1С-разработчик"; Link="https://ihclick.ru/?p=231669&o=274275&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Курс - Кибербезопасность и приложения на Python для детей"; Link="https://ihclick.ru/?p=231669&o=286934&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - DevOps-инженер"; Link="https://ihclick.ru/?p=231669&o=287319&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Курс - Программирование на Python для детей"; Link="https://ihclick.ru/?p=231669&o=287628&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Тестировщик"; Link="https://ihclick.ru/?p=231669&o=288064&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Специалист по кибербезопасности"; Link="https://ihclick.ru/?p=231669&o=288872&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Аналитик"; Link="https://ihclick.ru/?p=231669&o=290861&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Графический дизайнер"; Link="https://ihclick.ru/?p=231669&o=290872&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Бизнес-аналитик"; Link="https://ihclick.ru/?p=231669&o=290946&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Менеджер проектов"; Link="https://ihclick.ru/?p=231669&o=290953&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Data Scientist"; Link="https://ihclick.ru/?p=231669&o=291067&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Разработчик на Unreal Engine"; Link="https://ihclick.ru/?p=231669&o=291177&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Курс - Разработка игр на Unity для детей"; Link="https://ihclick.ru/?p=231669&o=291193&idp=311827" }
    @{ Name="Курс - Компьютерная грамотность для детей"; Link="https://ihclick.ru/?p=231669&o=291199&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Курс - Программирование на Python в Minecraft: углублённый"; Link="https://ihclick.ru/?p=231669&o=291202&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Маркетолог"; Link="https://ihclick.ru/?p=231669&o=291255&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Курс - Веб-дизайн для детей"; Link="https://ihclick.ru/?p=231669&o=314007&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Курс - Графический дизайн для детей"; Link="https://ihclick.ru/?p=231669&o=314561&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Разработчик искусственного интеллекта"; Link="https://ihclick.ru/?p=231669&o=314718&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Курс - Программирование и дизайн игр в Roblox (для детей)"; Link="https://ihclick.ru/?p=231669&o=320623&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Курс - 3D-моделирование для детей"; Link="https://ihclick.ru/?p=231669&o=320698&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Курс - Дизайнер ландшафтов"; Link="https://ihclick.ru/?p=231669&o=320704&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Геймдизайнер"; Link="https://ihclick.ru/?p=231669&o=320766&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Интернет-маркетолог"; Link="https://ihclick.ru/?p=231669&o=322275&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Курс - Motion-дизайнер 2.0"; Link="https://ihclick.ru/?p=231669&o=325149&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Инженер по автоматизации тестирования"; Link="https://ihclick.ru/?p=231669&o=325247&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Бухгалтер"; Link="https://ihclick.ru/?p=231669&o=325320&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Разработчик игр на Unity"; Link="https://ihclick.ru/?p=231669&o=325321&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Концепт-художник с нуля до PRO"; Link="https://ihclick.ru/?p=231669&o=325322&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Коммерческий иллюстратор"; Link="https://ihclick.ru/?p=231669&o=325323&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - 3D-художник"; Link="https://ihclick.ru/?p=231669&o=325324&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Фотограф"; Link="https://ihclick.ru/?p=231669&o=325325&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Курс - Как продавать на Wildberries"; Link="https://ihclick.ru/?p=231669&o=325326&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Сценарист"; Link="https://ihclick.ru/?p=231669&o=325328&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Режиссер монтажа"; Link="https://ihclick.ru/?p=231669&o=325329&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Курс - AutoCAD с нуля до PRO"; Link="https://ihclick.ru/?p=231669&o=325332&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - HR-бизнес-партнер"; Link="https://ihclick.ru/?p=231669&o=325333&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Дизайнер интерьеров и ландшафтной среды"; Link="https://ihclick.ru/?p=231669&o=325335&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Персональный стилист"; Link="https://ihclick.ru/?p=231669&o=325336&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Копирайтер"; Link="https://ihclick.ru/?p=231669&o=325337&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Event-менеджер"; Link="https://ihclick.ru/?p=231669&o=325338&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Fashion-дизайнер 2.0"; Link="https://ihclick.ru/?p=231669&o=325339&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Курс - Excel + Google-таблицы с нуля до PRO"; Link="https://ihclick.ru/?p=231669&o=325340&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Machine Learning Engineer"; Link="https://ihclick.ru/?p=231669&o=325341&idp=311827&erid=LdtCK7b7u" }
    @{ Name="Профессия - Фи
