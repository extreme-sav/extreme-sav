&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	//TODO: Вставить содержимое обработчика
	Пользователь = РеквизитФормыВЗначение("Объект");
	Пользователь.ЗаполнитьТаблицуРолей();
	ЗначениеВРеквизитФормы(Пользователь, "Объект");
КонецПроцедуры

