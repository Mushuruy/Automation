*** Settings ***
Resource    FW.resource

*** Test Cases ***

ТК 1

##  Расчет позитивных значений "По стоимости недвижимости" (Стоимость недвижимости "Рубли",
##  первоночальный взнос "Рубли", срок кредита "Лет", тип ежемесячных платежей "Аннуитетные")

  Загрузка страницы
	Запонение формы          1000000            200000              15              30
	Нажатие выпадающего списка "Досрочное погашение..."
	Расчет
	Задержка
  Закрытие Окна

ТК 2
##  Расчет позитивных значений "По стоимости недвижимости" (Стоимость недвижимости "Рубли",
##  первоночальный взнос "Процент", срок кредита "Лет", тип ежемесячных платежей "Аннуитетные")

  Загрузка страницы
  Первоначальный взнос "Процент"
	Запонение формы          1000000            20              15              30
	Нажатие выпадающего списка "Досрочное погашение..."
	Расчет
	Задержка
  Закрытие Окна

ТК 3
##  Расчет позитивных значений "По стоимости недвижимости" (Стоимость недвижимости "Рубли",
##  первоночальный взнос "Рубли", срок кредита "Месяцев", тип ежемесячных платежей "Аннуитетные")

  Загрузка страницы
  Срок кредита "Месяц"
	Запонение формы          1000000            200000            180             30
	Нажатие выпадающего списка "Досрочное погашение..."
	Расчет
	Задержка
  Закрытие Окна

ТК 4
##  Расчет позитивных значений "По стоимости недвижимости" (Стоимость недвижимости "Рубли",
##  первоночальный взнос "Процент", срок кредита "Месяцев", тип ежемесячных платежей "Аннуитетные")

  Загрузка страницы
  Первоначальный взнос "Процент"
  Срок кредита "Месяц"
	Запонение формы          1000000            20            180             30
	Нажатие выпадающего списка "Досрочное погашение..."
	Расчет
	Задержка
  Закрытие Окна

ТК 5
##  Расчет позитивных значений "По стоимости недвижимости" (Стоимость недвижимости "Рубли",
##  первоночальный взнос "Рубли", срок кредита "Лет", тип ежемесячных платежей "Дифференцированные")

  Загрузка страницы
	Запонение формы          1000000            200000              15              30
	Проверка заполнения формы          1000000      Нет такста
	Нажатие выпадающего списка "Досрочное погашение..."
	Нажатие Радиобатон "Дифференцированные"
	Проверка переключения радиобатон "Дифференцированные"
	Расчет
	Проверяет что текст на странице есть        //div[contains(text(),'444,44')]         Нет текста после расчета
	Задержка
  Закрытие Окна

ТК 6
##  Расчет позитивных значений "По стоимости недвижимости" (Стоимость недвижимости "Рубли",
##  первоночальный взнос "Процент", срок кредита "Лет", тип ежемесячных платежей "Дифференцированные")

  Загрузка страницы
  Первоначальный взнос "Процент"
	Запонение формы          1000000            20              15              30
	Нажатие выпадающего списка "Досрочное погашение..."
	Нажатие Радиобатон "Дифференцированные"
	Расчет
	Задержка
  Закрытие Окна

ТК 7
##  Расчет позитивных значений "По стоимости недвижимости" (Стоимость недвижимости "Рубли",
##  первоночальный взнос "Рубли", срок кредита "Месяцев", тип ежемесячных платежей "Дифференцированные")

  Загрузка страницы
  Срок кредита "Месяц"
	Запонение формы          1000000            200000            180             30
	Нажатие выпадающего списка "Досрочное погашение..."
	Нажатие Радиобатон "Дифференцированные"
	Расчет
	Задержка
  Закрытие Окна

ТК 8
##  Расчет позитивных значений "По стоимости недвижимости" (Стоимость недвижимости "Рубли",
##  первоночальный взнос "Процент", срок кредита "Месяцев", тип ежемесячных платежей "Дифференцированные")

  Загрузка страницы
  Первоначальный взнос "Процент"
  Срок кредита "Месяц"
	Запонение формы          1000000            20            180             30
	Нажатие выпадающего списка "Досрочное погашение..."
	Нажатие Радиобатон "Дифференцированные"
	Расчет
	Задержка
  Закрытие Окна

ТК 9
##  Заполнение формы отрицательными значениями

  Загрузка страницы
  Заполнение формы отрицательными значениями    -1000000     -200000    -15     -30
	Расчет
	Задержка
	Закрытие окна

ТК 10
##  Заполнение формы символами

  Загрузка страницы
  Заполнение формы отрицательными значениями    апврвdfg@$#     sdfgывф"!    цуаefr@$     GFWEЫФКвчы
	Расчет
	Задержка
	Закрытие окна

ТК 11
##  Расчет пустых значений

  Загрузка страницы
  Расчет
  Задержка
  Закрытие Окна