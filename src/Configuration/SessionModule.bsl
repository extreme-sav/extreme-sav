Процедура УстановкаПараметровСеанса(ТребуемыеПараметры)
	//TODO: Вставить содержимое обработчика
	
	Пользователь = ПользователиИнформационнойБазы.ТекущийПользователь();
	ПараметрыСеанса.ТекущийПользователь = Справочники.Пользователи.ПолучитьПользователя( Пользователь ); 
	
	//Fixme: необходимо исправить ошибку
	
	//XXX: нужно переделать
	
КонецПроцедуры
