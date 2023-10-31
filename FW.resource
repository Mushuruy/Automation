*** Settings ***
Library     Selenium2Library
Library  BiltIn


*** Keywords ***
Загрузка страницы
	Open Browser              https://calcus.ru/kalkulyator-ipoteki           googlechrome
   	Maximize Browser Window
   	Set Selenium Speed        1sec

Первоначальный взнос "Процент"
	Click Element             //option[@value='2']

Срок кредита "Месяц"
    Click Element             //option[@value='M']

Запонение формы
	[Arguments]              ${cost}         ${start_sum}          ${period}        ${percent}
    Input Text                 //input[@name='cost']                           ${cost}
    Input Text                 //input[@name='start_sum']                      ${start_sum}
    Input Text                 //input[@name='period']                         ${period}
    Input Text                 //input[@name='percent']                        ${percent}
    sleep                      10sec

Нажатие Радиобатон "Дифференцированные"
#    Click Element	               //html/body/div[2]/div[2]/div[1]/form/div[10]/div[2]/label/span
#    Click Element                  //input[@value='2']
     Click Element                //label[@for="payment-type-2"]

Нажатие выпадающего списка "Досрочное погашение..."
	Click Element              //a[@href='#features-collapse']

Расчет
	Click Element              //input[@value='Рассчитать']

Задержка
	Sleep                      10sec

Закрытие окна
	Close Browser

#Переключение валюты
  # Click Element              //div[contains(text(),'Стоимость недвижимости')]//parent::div//a[@data-sign='$']
  # Click Element              //*[@id="currencyModal"]/div/div/div[2]/div[2]/div[1]/a
  # Click Element             //*[@id="currencyModal"]/div/div/div[2]/div[2]/div[1]/a/span

Заполнение формы отрицательными значениями
	[Arguments]              ${cost}         ${start_sum}          ${period}        ${percent}
    Input Text                 //input[@name='cost']                           ${cost}
    Input Text                 //input[@name='start_sum']                      ${start_sum}
    Input Text                 //input[@name='period']                         ${period}
    Input Text                 //input[@name='percent']                        ${percent}
    sleep                      10sec

Проверка переключения радиобатон "Дифференцированные"
   ${status}            ${value} =          Run Keyword And Ignore Error           Click Element               //label[@for="payment-type-2"]
   Run Keyword If       '${status}' == 'FAIL'           FAIL                    Не найден радиобатон "Дифференцированные"

Проверяет что текст на странице есть
    [Arguments]     ${локатор}      ${текст_ошибки}
    ${status}       ${value} =          Run Keyword And Ignore Error     Get Text       ${локатор}
    Run Keyword If          '${status}' == 'FAIL'       FAIL                            ${текст_ошибки}

 # //div[@class='calc-result-value result-placeholder-monthlyPayment format-currency'] локатор ежемесячный платеж
 # //div[contains(text(),'24 444,44 ₽')]/span[contains(text(),'4 555,56 ₽')]

Проверка заполнения формы
    [Arguments]     ${локатор}      ${текст_ошибки}
    ${status}       ${value} =       Run Keyword And Ignore Error Wait until Element Is Visible          ${локатор}
    Run Keyword If      '${status}' == 'FAIL'       FAIL        ${текст_ошибки}
    ${status}       ${value} =       Run Keyword And Ignore Error        Get Text       ${локатор}
    Run Keyword If      '${status}' == 'FAIL'       FAIL        ${текст_ошибки}
