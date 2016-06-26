﻿//начало текста модуля

///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Служебная функция.
Функция ДобавитьШагВМассивТестов(МассивТестов,Снипет,ИмяПроцедуры,ПредставлениеТеста = Неопределено,Транзакция = Неопределено,Параметр = Неопределено)
	Структура = Новый Структура;
	Структура.Вставить("Снипет",Снипет);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ПредставлениеТеста",ПредставлениеТеста);
	Структура.Вставить("Транзакция",Транзакция);
	Структура.Вставить("Параметр",Параметр);
	МассивТестов.Добавить(Структура);
КонецФункции

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	ДобавитьШагВМассивТестов(ВсеТесты,"ПроизошлаЗагрузкаНесколькихФичИзКаталога()","ПроизошлаЗагрузкаНесколькихФичИзКаталога","Тогда произошла загрузка нескольких фич из каталога");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯНажимаюНаКнопкуЗагрузитьОднуФичу()","ЯНажимаюНаКнопкуЗагрузитьОднуФичу","Когда Я нажимаю на кнопку Загрузить одну фичу");
	ДобавитьШагВМассивТестов(ВсеТесты,"ВОткрывшемсяОкнеЯУказываюПутьКФиче(Парам01)","ВОткрывшемсяОкнеЯУказываюПутьКФиче","Тогда в открывшемся окне я указываю путь к фиче ""Core\FeatureWrite\Док-ПримерНаписанияФичи.feature""");
	ДобавитьШагВМассивТестов(ВсеТесты,"ПроизошлаЗагрузкаОднойФичиИзКаталога()","ПроизошлаЗагрузкаОднойФичиИзКаталога","Тогда произошла загрузка одной фичи из каталога");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯНажимаюНаКнопкуЗагрузитьФайлыИзКаталога()","ЯНажимаюНаКнопкуЗагрузитьФайлыИзКаталога","Когда Я нажимаю на кнопку Загрузить файлы из каталога");
	ДобавитьШагВМассивТестов(ВсеТесты,"ВОткрывшемсяОкнеЯУказываюПутьККаталогуФич(Парам01)","ВОткрывшемсяОкнеЯУказываюПутьККаталогуФич","И     в открывшемся окне я указываю путь к каталогу фич ""Core\FeatureWrite""");
	ДобавитьШагВМассивТестов(ВсеТесты,"ПроизошлаЗагрузкаФичИзКаталога()","ПроизошлаЗагрузкаФичИзКаталога","Тогда произошла загрузка фич из каталога");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯДелаюСвёрткуСтрокДереваДоФич()","ЯДелаюСвёрткуСтрокДереваДоФич","И я делаю свёртку строк дерева до фич");
	ДобавитьШагВМассивТестов(ВсеТесты,"ВДеревеЕстьНесколькоФич()","ВДеревеЕстьНесколькоФич","И В Дереве есть несколько фич");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯНажимаюНаКнопкуПерезагрузитьСценарии()","ЯНажимаюНаКнопкуПерезагрузитьСценарии","И     Я нажимаю на кнопку Перезагрузить Сценарии");
	ДобавитьШагВМассивТестов(ВсеТесты,"ОднаИзФичНеЗагрузиласьТкВНейБылУказанТегIgnoreOnCIMainBuild()","ОднаИзФичНеЗагрузиласьТкВНейБылУказанТегIgnoreOnCIMainBuild","Тогда одна из фич не загрузилась, т.к. в ней был указан тег @IgnoreOnCIMainBuild");
	ДобавитьШагВМассивТестов(ВсеТесты,"КоличествоФичВДеревеУменьшилось()","КоличествоФичВДеревеУменьшилось","И количество фич в дереве уменьшилось");
	ДобавитьШагВМассивТестов(ВсеТесты,"ОднаИзФичНеЗагрузиласьТкВНейНЕБылУказанТегIgnoreOnCIMainBuild()","ОднаИзФичНеЗагрузиласьТкВНейНЕБылУказанТегIgnoreOnCIMainBuild","Тогда одна из фич не загрузилась, т.к. в ней НЕ был указан тег @IgnoreOnCIMainBuild");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//Когда Я нажимаю на кнопку Загрузить одну фичу
//@ЯНажимаюНаКнопкуЗагрузитьОднуФичу()
Процедура ЯНажимаюНаКнопкуЗагрузитьОднуФичу() Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\FeatureLoadOne.sikuli""");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <FeatureLoadOne>");
	
	Ванесса.СделатьДействияПриЗаписиИнструкции("толькоскриншот");
	
	Ванесса.Шаг("И я набираю текст ""#enter""");
	
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\OpenDialogClick.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <OpenDialogClick>");
КонецПроцедуры

&НаКлиенте
//Тогда в открывшемся окне я указываю путь к фиче "Core\FeatureWrite\Док-ПримерНаписанияФичи.feature"
//@ВОткрывшемсяОкнеЯУказываюПутьКФиче(Парам01)
Процедура ВОткрывшемсяОкнеЯУказываюПутьКФиче(ЧастьПутиКФиче) Экспорт
	ПутьКФиче = Ванесса.Объект.КаталогИнструментов + "\Features\" + ЧастьПутиКФиче;
	Ванесса.Шаг("И я набираю текст """ + ПутьКФиче + """");
	Ванесса.СделатьДействияПриЗаписиИнструкции();
	Ванесса.Шаг("И я набираю текст ""#enter""");
КонецПроцедуры

&НаКлиенте
//Когда Я нажимаю на кнопку Загрузить файлы из каталога
//@ЯНажимаюНаКнопкуЗагрузитьФайлыИзКаталога()
Процедура ЯНажимаюНаКнопкуЗагрузитьФайлыИзКаталога() Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\FeatureLoadMany.sikuli""");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <FeatureLoadMany>");
	
	Ванесса.СделатьДействияПриЗаписиИнструкции("толькоскриншот");
	
	Ванесса.Шаг("И я набираю текст ""#enter""");
	
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\OpenDialogClickFolder.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <OpenDialogClickFolder>");
КонецПроцедуры

&НаКлиенте
//Тогда в открывшемся окне я указываю путь к каталогу фич "Core\FeatureWrite"
//@ВОткрывшемсяОкнеЯУказываюПутьККаталогуФич(Парам01)
Процедура ВОткрывшемсяОкнеЯУказываюПутьККаталогуФич(ЧастьПутиКФиче) Экспорт
	ПутьКФиче = Ванесса.Объект.КаталогИнструментов + "\Features\" + ЧастьПутиКФиче;
	Ванесса.Шаг("И я набираю текст """ + ПутьКФиче + """");
	Ванесса.СделатьДействияПриЗаписиИнструкции();

	
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\OpenDialogClickFolderSelect.sikuli""");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <OpenDialogClickFolderSelect>");
КонецПроцедуры

&НаКлиенте
//Тогда произошла загрузка фич из каталога
//@ПроизошлаЗагрузкаФичИзКаталога()
Процедура ПроизошлаЗагрузкаФичИзКаталога() Экспорт
	//Ванесса.Sleep(3);
	ДеревоТестов = Ванесса.ПолучитьЗначениеРеквизитаОткрытойФормыПоЗаголовку("ДеревоТестов");
	
	КолФич = 0;
	
	Для каждого СтрДеревоТестов Из ДеревоТестов Цикл
		ПутьКФиче = СтрДеревоТестов["Путь к файлу"];
		Если ПутьКФиче = Неопределено Тогда
			ВызватьИсключение "ПутьКФиче=Неопределено";
		КонецЕсли;	 
		Если Найти(НРег(ПутьКФиче),".feature") > 0 Тогда
			КолФич = КолФич + 1;
		КонецЕсли;	 
	КонецЦикла;
	
	Ванесса.ПроверитьРавенство(КолФич > 0,Истина,"Загружено больше одной фичи");
КонецПроцедуры

&НаКлиенте
//Тогда произошла загрузка нескольких фич из каталога
//@ПроизошлаЗагрузкаНесколькихФичИзКаталога()
Процедура ПроизошлаЗагрузкаНесколькихФичИзКаталога() Экспорт
	Ванесса.Sleep(3);
КонецПроцедуры

&НаКлиенте
//И     Я нажимаю на кнопку Перезагрузить Сценарии
//@ЯНажимаюНаКнопкуПерезагрузитьСценарии()
Процедура ЯНажимаюНаКнопкуПерезагрузитьСценарии() Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\ReloadScenarios.sikuli""");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <ReloadScenarios>");
	
	Ванесса.СделатьДействияПриЗаписиИнструкции("толькоскриншот");
КонецПроцедуры

&НаКлиенте
//И ываыавыаыв
//@Ываыавыаыв()
Процедура Ываыавыаыв() Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Тогда одна из фич не загрузилась, т.к. в ней был указан тег @IgnoreOnCIMainBuild
//@ОднаИзФичНеЗагрузиласьТкВНейБылУказанТегIgnoreOnCIMainBuild()
Процедура ОднаИзФичНеЗагрузиласьТкВНейБылУказанТегIgnoreOnCIMainBuild() Экспорт
	
КонецПроцедуры

&НаКлиенте
//Тогда одна из фич не загрузилась, т.к. в ней НЕ был указан тег @IgnoreOnCIMainBuild
//@ОднаИзФичНеЗагрузиласьТкВНейНЕБылУказанТегIgnoreOnCIMainBuild()
Процедура ОднаИзФичНеЗагрузиласьТкВНейНЕБылУказанТегIgnoreOnCIMainBuild() Экспорт
	
КонецПроцедуры

&НаКлиенте
//Тогда произошла загрузка одной фичи из каталога
//@ПроизошлаЗагрузкаОднойФичиИзКаталога()
Процедура ПроизошлаЗагрузкаОднойФичиИзКаталога() Экспорт
	Ванесса.Шаг("И     таблица формы с именем ""ДеревоТестов"" стала равной:
		|| 'Снипет'                                      | 'Наименование'                                            |
		|| ''                                            | 'Док-ПримерНаписанияФичи.feature'                         |
		|| ''                                            | 'Док-ПримерНаписанияФичи'                                 |
		|| ''                                            | 'Контекст'                                                |
		|| 'СформироватьИмяВременногоФайлаФичи(Парам01)' | 'Когда Сформировать имя временного файла фичи ""Example1""' |
		|| ''                                            | 'Создание feature-файла'                                  |
		|| 'ЯОткрываюТекстовыйРедактор()'                | 'Когда Я открываю текстовый редактор'                     |
		|| 'ЗапустилсяРедакторVisualStudioCode()'        | 'Тогда запустился редактор Visual Studio Code'            |
		|| 'ЯПишуЗаголовокФичи()'                        | 'И Я пишу заголовок фичи'                                 |
		|| 'ЯПишуСекциюКонтекст()'                       | 'И Я пишу секцию Контекст'                                |
		|| 'ЯПишуСекциюСценарий()'                       | 'И Я пишу секцию Сценарий'                                |
		|| 'ЯПишуСекциюСтруктураСценария()'              | 'И Я пишу секцию Структура сценария'                      |
		|| 'СохраняюСделанныеИзменения()'                | 'И Сохраняю сделанные изменения'                          |
		|");
КонецПроцедуры

&НаКлиенте
//И я делаю свёртку строк дерева до фич
//@ЯДелаюСвёрткуСтрокДереваДоФич()
Процедура ЯДелаюСвёрткуСтрокДереваДоФич() Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\SvernutDerevoDoFich.sikuli""");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <SvernutDerevoDoFich>");
	
	Ванесса.СделатьДействияПриЗаписиИнструкции("толькоскриншот");
	
	Ванесса.Шаг("И я набираю текст ""#enter""");
КонецПроцедуры

&НаКлиенте
Функция ПолучитьКоличествоФич()
	КолФич = 0;
	ДеревоТестов = Ванесса.ПолучитьЗначениеРеквизитаОткрытойФормыПоЗаголовку("ДеревоТестов");
	Для каждого СтрДеревоТестов Из ДеревоТестов Цикл
		ПутьКФиче = СтрДеревоТестов["Путь к файлу"];
		Если ПутьКФиче = Неопределено Тогда
			ВызватьИсключение "ПутьКФиче=Неопределено";
		КонецЕсли;	 
		Если Найти(НРег(ПутьКФиче),".feature") > 0 Тогда
			КолФич = КолФич + 1;
		КонецЕсли;	 
	КонецЦикла;
	
	Ванесса.ПроверитьРавенство(КолФич > 0,Истина,"Загружено больше одной фичи");
	
	Возврат КолФич;
КонецФункции	

&НаКлиенте
//И В Дереве есть несколько фич
//@ВДеревеЕстьНесколькоФич()
Процедура ВДеревеЕстьНесколькоФич() Экспорт
	КолФич = ПолучитьКоличествоФич();
	Контекст.Вставить("ТекущееКоличествоФич",КолФич);
КонецПроцедуры

&НаКлиенте
//И количество фич в дереве уменьшилось
//@КоличествоФичВДеревеУменьшилось()
Процедура КоличествоФичВДеревеУменьшилось() Экспорт
	КолФич = ПолучитьКоличествоФич();
	Ванесса.ПроверитьРавенство(КолФич < Контекст.ТекущееКоличествоФич,Истина,"Количество фич в дереве уменьшилось.");
	Ванесса.ПроверитьНеРавенство(КолФич ,0,"Есть хотя бы одна фича.");
КонецПроцедуры
