﻿# encoding: utf-8
# language: ru

@IgnoreOnLinux

#https://github.com/silverbulleters/vanessa-behavior/issues/232


Функционал: Проверка перегенерации EPF в режиме обычных форм 232
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность на основании фичи перегенерировать epf файлы
	Чтобы не возникало ошибок перегенерации
 
Контекст:
	Дано Очищены временные файлы результатов прошлых генераций

	Сценарий: Перегенерация EPF

	Когда я открыл форму VanessaBehavoir в режиме самотестирования
	И я загрузил специальную тестовую фичу "ФичаДляПроверкиПерегенерацииEPF232"
	И я перешел на закладку генератор EPF
	И ожидаемый файл epf уже существует issues232
	И я нажал на кнопку "СоздатьШаблоныОбработок"
	Тогда я получил сгенерированный epf файл в ожидаемом каталоге
	И сгенерированный epf прошел проверку на корректность после перегенерации issues232

