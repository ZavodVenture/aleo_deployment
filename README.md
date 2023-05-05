# aleo_deployment

Это скрипт, которой автоматически выполняет все необходимые команды для деплоя приложения в тестнете aleo

Скрипт написан в **Zavod Venture**
Переходите в наш [телеграм](https://t.me/Zavod_Venture), там ещё много интересного.

Кошельки для донатов:

`0x439c834EE3110CeF4874E94125FE950dc8E35e2b` - ERC20

`TSzyryTJkmT9fiMEVBESjA4sh9SpBw16JX` - TRC20

## Генерация адреса кошелька

- В браузере перейдите на https://aleo.tools/ и нажмите кнопку **Generate**
- Сохраните **Address**, **View Key** и **Private Key**, позже они понадобятся

## Получение монет

Чтобы получить токены, необходимые для деплоя, нужно воспользоваться официальным краном (https://faucet.aleo.tools/). Сейчас для полуения монет нужно отправить СМС на номер **+1-867-888-5688** со следующим текстом:

```
Send 50 credits to aleo1xxxxxx
```

Где `aleo1xxxxxx` - адрес кошелька, полученный на предыдущем этапе. Когда монеты будут зачислены, на этом сайте появится транзакция с Вашим адресом. Копируем её ID и куда-нибудь сохраняем.

## Загрузка и запуск скрипта

Чтобы загрузить и запустить скрипт понадобится машина с установленной системой Ubuntu (проверено на 22.04). Для загрузки и запуска скрипта нужно ввести эту команду:
```
sudo apt update -y && sudo apt install -y wget dos2unix && wget https://raw.githubusercontent.com/ZavodVenture/aleo_deployment/main/script.sh -O script.sh && dos2unix script.sh && chmod +x script.sh && ./script.sh
```

После запуска скрипта нужно будет просто ввести данные, которые запросит скрипт, и ждать. 

После деплоя скрипт покажет имя приложения. Чтобы проверить, успешно ли всё прошло, нужно зайти на https://aleo.tools/ в раздел `REST API` -> `Get Program`, там ввести имя программы. Если всё хорошо, сайт выдаст информацию о ней.
