﻿# encoding: utf-8
# language: ru



Функционал: Передача параметров разных типов в процедуры
	Как Разработчик
	Я Хочу чтобы была возможность передавать параметры разных типов в сгенерированнфе процедуры
 
	Сценарий: Передача параметров в обычных сценариях типа Число
		Когда я выполняю шаг с параметром 1
		Тогда я получаю в процедуру параметр типа "Число"

	Сценарий: Передача параметров в обычных сценариях типа Строка в кавычках
		Когда я выполняю шаг с параметром "Просто строка"
		Тогда я получаю в процедуру параметр типа "Строка"

	Сценарий: Передача параметров в обычных сценариях типа Строка в апострофах
		Когда я выполняю шаг с параметром 'Просто строка'
		Тогда я получаю в процедуру параметр типа 'Строка'

	Сценарий: Передача параметров в обычных сценариях типа Строка в апострофах с кавычками
		Когда я выполняю шаг с параметром 'Просто "кавычки" строка'
		Тогда я получаю в процедуру параметр типа 'Строка'

	Сценарий: Передача параметров в обычных сценариях типа Дата
		Когда я выполняю шаг с параметром 08.04.1981
		Тогда я получаю в процедуру параметр типа "Дата"

	Сценарий: Передача параметров в обычных сценариях типа Дата
		Когда я выполняю шаг с параметром 08.04.81
		Тогда я получаю в процедуру параметр типа "Дата"

		Сценарий: Передача параметров в обычных сценариях числа ноль
		Когда я выполняю шаг с параметром 0
		Тогда я получаю в процедуру параметр типа "Число"

		
	Структура сценария: Передача параметров в структуре сценария
		Когда я выполняю шаг с параметром <ЗначениеПараметра>
		Тогда я получаю в процедуру параметр типа <ТипПараметра>
		
	Примеры:
		|  ЗначениеПараметра         |  ТипПараметра  |
		|        10                  |      Число     |
		| Просто какая-то строка     |      Строка    |
		| "Просто какая-то строка"   |      Строка    |
		| 'Просто какая-то строка'   |      Строка    |
		| 'Просто "какая-то" строка' |      Строка    |
		|     08.04.1981             |      Дата      |
		|     08.04.81               |      Дата      |
		|        -101                |      Число     |
		|        0                   |      Число     |
		