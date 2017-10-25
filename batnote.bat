:: Выключение вывода команд

@ECHO OFF

:: Смена кодировки и заголовка

chcp 866
title BatNote
cls

:: Выбор цвета и приветствие

cls
echo Вводите текст, но без новых строк! Нажмите Space, чтобы продолжить.
pause > NUL

:: Ввод названия файла и перенос его в заголовок

:name
cls
title BatNote
echo Сначала вам надо придумать название файла! Далее нажмите Enter!
set /p name=">"
cls

title %name% - BatNote

if %name%==egor21312 goto easter1
if %name%==Infinite96 goto easter2

:: Появление процесса написания текста

:write
title %name% - BatNote
cls
echo Чтобы записать файл, нажмите Enter! Для открытия меню пишите "menu"!
set /p text=">"
if %text%==menu goto menu
if %text%==cls goto cls
if %text%==dir goto dir
if %text%==time goto time
if %text%==date goto date
if %text%==dog goto dog
if %text%==saveas goto saveas
if %text%==theme goto themeselector
if %text%==view goto noteview
echo > NUL
goto save
:: Сохранение файла
:save
echo %Text% > %name%.txt
echo Ваша запись сохранена! Нажмите Space для выхода! P.S. Ваша запись сохранена в кодировке OEM866!
pause > NUL
exit

:: Команда menu

:menu
title Меню - BatNote
cls
echo 1. Файл
echo 2. Вид
echo 3. О программе
echo 4. О командах
echo 5. Назад
choice /C 123450 > NUL
if %errorlevel%==1 goto file
if %errorlevel%==2 goto view
if %errorlevel%==3 goto about
if %errorlevel%==4 goto comhelp
if %errorlevel%==5 goto write
if %errorlevel%==6 goto dog

:: Меню "Файл"

:file
title Файл - BatNote
cls
echo 1. Открыть
echo 2. Сохранить как...
echo ----------------
echo 3. Выход
echo ----------------
echo 4. Назад
choice /C 1234 > NUL
if %errorlevel%==1 goto noteview
if %errorlevel%==2 goto saveas
if %errorlevel%==3 exit
if %errorlevel%==4 goto menu

:: Меню "Вид"

:view
title Вид - BatNote
cls
echo 1. Сменить тему
echo ----------------
echo 2. Назад
choice /C 12 > NUL
if %errorlevel%==1 goto themeselector
if %errorlevel%==2 goto menu

:: О программе

:about
title О программе BatNote v0.4
cls
echo BatNote - консольный блокнот
echo Официальная ветка на гитхабе: https://github.com/alexsyw/batnote 
echo Удачи ;)
pause > NUL
goto write

:: Ошибочная собачка! =0

:dog
title ErrorDog - BatNote
cls
echo   /\_____/\
echo  /         \           I
echo I           \          II
echo I (.)   (.)  \        IIII
echo I     .       \       III
echo I    ___       \______III
echo I                     II
echo I                     I
echo I                     I
echo \   ___   __   ____   /
echo  I I   I I  I I    I I
echo  I_I   I_I  I_I    I_I
echo Данная часть кода ещё не дописана!
pause > NUL
goto write

:: Пасхалочка!
:easter1
cls
title МИМИМИ
echo КАК ЭТО МИИИИИИИИИИИИИИИИИИИИИЛО!!1!
pause > NUL
goto name

:: Пасхалочка! Дубль 2
:easter2
cls
title Infinite96
echo "I'm gonna get to rhythm by. (C) Infinite96"
pause > NUL
goto name

::open
::cls
::batnoteview.bat
::exit

:saveas
cls
title Сохранить как... - BatNote
echo "Введите путь для сохранения файла. Надо писать так: C:\Textdir\"
set /p dir=">"
goto writeto

:writeto
title %name% - Сохранить как... - BatNote
cls
echo Чтобы записать файл, нажмите Enter! Для открытия меню пишите "menu"!
set /p text=">"
goto savingas

:savingas
echo %Text% > %dir%%name%.txt
echo Ваша запись сохранена! Нажмите Space для выхода! P.S. Ваша запись сохранена в кодировке OEM866!
pause > NUL
exit

:themeselector
cls
choice /M "Вы хотите включить темную тему?"
if %errorlevel%==1 color 7
if %errorlevel%==2 color F0
cls
goto write

:cls
cls
goto clswrite

:clswrite
title %name% - BatNote
set /p text=">"
if %text%==menu goto menu
if %text%==cls goto cls
if %text%==dir goto dir
if %text%==time goto time
if %text%==date goto date
if %text%==dog goto dog
if %text%==saveas goto saveas
if %text%==theme goto themeselector
if %text%==view goto noteview
goto save

:dir
dir
goto clswrite

:time
echo %time%
goto clswrite

:date
echo %date%
goto clswrite

:noteview
title BatNote View v0.4
cls
echo Введите путь до текстового файла.
echo Оно показывает текст в формате BatNote!
echo (если он в этой папке, то надо ввести только его название и расширение):
set /p viewdir=
if %viewdir%==edit goto write
cls
type %viewdir%
title %viewdir% - BatNote View v0.4
echo .
echo Для перехода в BatNote нажмите Space!
PAUSE > NUL
goto write

:comhelp
title Команды - BatNote
cls
echo Итак, в BatNote всего 9 команд
echo 1 - menu. Тут все ясно.
echo 2 - cls. Она убирает весь текст с экрана.
echo 3 - dir. Она показывает файлы в папке с программой.
echo 4 и 5 - time и date. Показывают время и дату, соответственно.
echo 6 - секретная команда =D
echo 7 - saveas - Сохранить как...
echo 8 - themeselector - Выбор оформления.
echo 9 - view - открывает BatNote View. Перейти из BN View в BN можно командой edit.
echo На этом все. Веселитесь!
echo Нажмите Space для выхода
pause > NUL
goto write