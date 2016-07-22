#STM32CubeMX to Makefile
###Набор утилит для создания Makefile`a из проекта STM CubeMX

## Установка для Windows
1. Скачайте или клонируйте (git clone https://github.com/amperka/CubeMX2Makefile) репозитарий. **Важно! Путь к репозитарию не должен содержать пробелов и кирилицы. В противном случае 'make' будет работать не корректно!'**.
2. Установите ARM-GCC-NONE-EABI (https://launchpad.net/gcc-arm-embedded/+download)
3. Установите Python 2.7.x (https://www.python.org/download/releases/2.7/)
4. Установите STLink Util для поддержки прошивки (если используете ST-Link)
5. Добавьте в переменную PATH полный путь к репозитарию. Для этого зайдите в Мой компьютер->Свойства->Дополнительные параметры системы->Переменные среды->Переменная PATH.
6. Добавьте в переменную PATH полные пути к бинарным файлам GCC, Python, STLink Util (если используете). 


## Использование
* Запустите CubeMX, выполните настройки перефирии, тактирования и прочее.
* Нажмите иконку Generate source code
* В открывшемся окне Project Settings укажите путь для сохранения проекта и его название
* Важно! В Toolchain/IDE выбирите SW4STM32, нажмите ОК и дождитесь окончания генерации проекта
* В командной строке или запустив терминал в IDE, в корне папки проекта выполните команду 'createmake', по окончанию которой у вас будет готовый Makefile.
* Выполните 'make' и дождитесь окончания сборки проекта. Будет создана папка build, куда будут помещены бинарные и объектные файлы.
* Если вы используете STLink, выполните 'make flash' для загрузки исполняемого файла в микроконтроллер.



This program generates a Makefile from STM32CubeMX (http://www.st.com/stm32cube) created project. It is intended to be used along with GNU Make utility (www.gnu.org/software/make) and GNU tools for ARM (https://launchpad.net/gcc-arm-embedded) to compile STM32 firmware. Refer to my blog post http://www.ba0sh1.com/opensource-stm32-development for setup of integrated development environment.  

Copyright (c) 2016, Baoshi Zhu. All rights reserved.

Source code in this project is governed by Apache License 2.0 (http://www.apache.org/licenses/LICENSE-2.0)
