*** Settings ***
Library    Selenium2Library

*** Test Cases ***
Загрузка страницы
	Open Browser                       https://calcus.ru/kalkulyator-ipoteki    googlechrome
	Maximize Browser Window
	Set Selenium Speed                 1sec

# 1. Расчет позитивных значений "По стоимости недвижимости" (Стоимость недвижимости "Рубли",
#    первоночальный взнос "Рубли", срок кредита "Лет", тип ежемесячных платежей "Аннуитетные")

#	Input Text                          //input[@name='cost']                   6000000
#	Input Text                          //input[@name='start_sum']              200000
#	Input Text                          //input[@name='period']                 30
#	Input Text                          //input[@name='percent']                20
#	Click Element                       //input[@value='Рассчитать']
#	Click Element                       //a[@href='#features-collapse']
#	sleep                               10sec

# 2. Расчет позитивных значений "По стоимости недвижимости" (Стоимость недвижимости "Рубли",
#    первоночальный взнос "Процент", срок кредита "Лет", тип ежемесячных платежей "Аннуитетные")

#   Input Text                          //input[@name='cost']                   6000000
#	Click Element                       //option[@value='2']
#	Input Text                          //input[@name='start_sum']              20
#	Input Text                          //input[@name='period']                 30
#	Input Text                          //input[@name='percent']                20
#	Click Element                       //input[@value='Рассчитать']
#	Click Element                       //a[@href='#features-collapse']
#	sleep                               10sec

# 3. Расчет позитивных значений "По стоимости недвижимости" (Стоимость недвижимости "Рубли",
#    первоночальный взнос "Рубли", срок кредита "Месяцев", тип ежемесячных платежей "Аннуитетные")

#   Input Text                          //input[@name='cost']                   6000000
#   Input Text                          //input[@name='start_sum']              200000
#   Click Element                       //option[@value='M']
#   Input Text                          //input[@name='period']                 360
#   Input Text                          //input[@name='percent']                20
#   Click Element                       //input[@value='Рассчитать']
#	Click Element                       //a[@href='#features-collapse']
#	sleep                               10sec

# 4. Расчет позитивных значений "По стоимости недвижимости" (Стоимость недвижимости "Рубли",
#    первоночальный взнос "Процент", срок кредита "Месяцев", тип ежемесячных платежей "Аннуитетные")

#   Input Text                          //input[@name='cost']                   6000000
#   Click Element                       //option[@value='2']
#	Input Text                          //input[@name='start_sum']              20
#   Click Element                       //option[@value='M']
#   Input Text                          //input[@name='period']                 360
#   Input Text                          //input[@name='percent']                20
#   Click Element                       //input[@value='Рассчитать']
#	Click Element                       //a[@href='#features-collapse']
#	sleep                               10sec

# 5. Расчет позитивных значений "По стоимости недвижимости" (Стоимость недвижимости "Рубли",
#    первоночальный взнос "Рубли", срок кредита "Лет", тип ежемесячных платежей "Дифференцированные")

#	Input Text                          //input[@name='cost']                   6000000
#	Input Text                          //input[@name='start_sum']              200000
#	Input Text                          //input[@name='period']                 30
#	Input Text                          //input[@name='percent']                20
#	Click Element	                    //html/body/div[2]/div[2]/div[1]/form/div[10]/div[2]/label/span
#	Click Element                       //input[@value='Рассчитать']
#	Click Element                       //a[@href='#features-collapse']
#	sleep                               10sec

# 6. Расчет позитивных значений "По стоимости недвижимости" (Стоимость недвижимости "Рубли",
#    первоночальный взнос "Процент", срок кредита "Лет", тип ежемесячных платежей "Дифференцированные")

#   Input Text                          //input[@name='cost']                   6000000
#	Click Element                       //option[@value='2']
#	Input Text                          //input[@name='start_sum']              20
#	Input Text                          //input[@name='period']                 30
#	Input Text                          //input[@name='percent']                20
#	Click Element	                    //html/body/div[2]/div[2]/div[1]/form/div[10]/div[2]/label/span
#	Click Element                       //input[@value='Рассчитать']
#	Click Element                       //a[@href='#features-collapse']
#	sleep                               10sec

# 7. Расчет позитивных значений "По стоимости недвижимости" (Стоимость недвижимости "Рубли",
#    первоночальный взнос "Рубли", срок кредита "Месяцев", тип ежемесячных платежей "Дифференцированные")

#   Input Text                          //input[@name='cost']                   6000000
#   Input Text                          //input[@name='start_sum']              200000
#   Click Element                       //option[@value='M']
#   Input Text                          //input[@name='period']                 360
#   Input Text                          //input[@name='percent']                20
#   Click Element	                     //html/body/div[2]/div[2]/div[1]/form/div[10]/div[2]/label/span
#   Click Element                       //input[@value='Рассчитать']
#	Click Element                       //a[@href='#features-collapse']
#	sleep                               10sec

# 8. Расчет позитивных значений "По стоимости недвижимости" (Стоимость недвижимости "Рубли",
#    первоночальный взнос "Процент", срок кредита "Месяцев", тип ежемесячных платежей "Дифференцированные")

#   Input Text                          //input[@name='cost']                   6000000
#   Click Element                       //option[@value='2']
#	Input Text                          //input[@name='start_sum']              20
#   Click Element                       //option[@value='M']
#   Input Text                          //input[@name='period']                 360
#   Input Text                          //input[@name='percent']                20
#   Click Element	                    //html/body/div[2]/div[2]/div[1]/form/div[10]/div[2]/label/span
#   Click Element                       //input[@value='Рассчитать']
#	Click Element                       //a[@href='#features-collapse']
#   sleep                               10sec

# 9. Заполнение формы отрицательными значениями

#    Input Text                          //input[@name='cost']                   -6000000
#    Input Text                          //input[@name='start_sum']              -200000
#    Input Text                          //input[@name='period']                 -30
#    Input Text                          //input[@name='percent']                -20
#    Click Element                       //input[@value='Рассчитать']
#    sleep                               10sec

# 10. Заполнение формы символами

#	Input Text                          //input[@name='cost']                   ewr@$dgыук
#    Input Text                          //input[@name='start_sum']              sefg@@Eуке
#    Input Text                          //input[@name='period']                 qewreкпее
#    Input Text                          //input[@name='percent']                ew@eекук
#    Click Element                       //input[@value='Рассчитать']
#    sleep                               10sec

# 11. Расчет пустых значений
#    Click Element                       //input[@value='Рассчитать']
#    sleep                               10sec
