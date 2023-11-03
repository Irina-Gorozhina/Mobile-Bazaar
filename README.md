# irina-express-app

FIGMA
- https://www.figma.com/file/IOSbip979riO2RJm4gkMtF/The-best-Mobile-Bazaar?type=design&node-id=35-97&mode=design&t=YmFAZSN7aVb7EqiT-0

- REPOS:
- То что Ирина уже сделала - https://github.com/Irina-Gorozhina/Minute-cafe-11
- Пример преподавателя - https://github.com/Irina-Gorozhina/BEST-MOBILE-PHONE-BAZAAR


Главная:
- Убрал: рейтинг на товаре
- Футер: было 2-а номера оставил только 1
- Возможно убрать поиск с главной страницы - сделал
- Убрал: All categories т.к. не нашел дизайна на странице

Продукты:
- Убрал: рейтинг на товаре
- Добавил кнопку "детайлз"
- Убрал: "скрывающиеся фильтры"

Один продукт:
- Добавил кнопку "назад"

Админка: 
- Добавил кнопку "создать" 
- Добавил страницы: контакты и новости (не было на дизайне)

Мобилка:
- убрал поиск и бургер меню из мобильной версии
- поправил футер 

Проверка в конце:
- ~~Проверить чтобы все ссылки работали~~

Если останется время: 
- добавить рейтинг назад
- валидацию на все формы
- Сделать enum в БД некоторых полей
- норм верстку админки ??
- причесать код??

Дата База
Сделала DB, там нет еще Change Log. Я добавлю, но пока не понимаю какие строки туда нужны. Могу сделать как у учителя? `changelog_id` int NOT NULL AUTO_INCREMENT,
  `changelog_date` datetime NOT NULL,
  `changelogcol_user_id` int NOT NULL,
  `changelogcol_message` varchar(100) NOT NULL,
  PRIMARY KEY (`changelog_id`)

USERS:
- username: jane
- password: 123

