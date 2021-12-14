Процедура ЗаполнитьТаблицуРолей() Экспорт
		//@skip-warning
		Пользователь = ПользователиИнформационнойБазы.НайтиПоИмени(Наименование);
		СписокПрав.Очистить();
		НаборПрав = Метаданные.Роли;
		
		//@skip-warning
		Для Каждого Роль Из НаборПрав Цикл
			
			//@skip-warning
			СтрокиРоли = СписокПрав.Добавить();
			СтрокиРоли.ИмяРоли = Роль.Имя;
			СтрокиРоли.ПредставлениеРоли = Роль.Синоним;
			СтрокиРоли.Включено = Пользователь.Роли.Содержит(Роль);
		КонецЦикла;
		
КонецПроцедуры

Процедура ПередЗаписью(Отказ)
	
	Пользователь = ПользователиИнформационнойБазы.НайтиПоИмени(Наименование);
	
	Если (Пользователь = Неопределено) Тогда
		Пользователь = ПользователиИнформационнойБазы.СоздатьПользователя();
		Пользователь.Имя = Наименование;
		Пользователь.ПолноеИмя = ПолноеИмя;
	КонецЕсли;
	
	Пользователь.Роли.Очистить();
	
	СписокРолей = СписокПрав.НайтиСтроки(Новый Структура("Включено", Истина));
	Для Каждого Роль Из СписокРолей Цикл
		Пользователь.Роли.Добавить(Метаданные.Роли.Найти(Роль.ИмяРоли));
	КонецЦикла;
	Пользователь.Записать();

КонецПроцедуры
