:: Выключение вывода команд

@ECHO OFF

:: Смена кодировки и заголовка

chcp 866
title BatNote HK
color 0A
cls

:: Выбор цвета и приветствие

cls
echo typ3 t3xt, n0 n3w r0ws. pr3ss sp@c3.
pause > NUL

:: Ввод названия файла и перенос его в заголовок

:name
cls
title BatNote
echo typ3 @ f1l3 n@m3
set /p name=">"
cls

title %name% - BatNote HK

if %name%==egor21312 goto easter1
if %name%==dafroz goto easter2

:: Появление процесса написания текста

:write
title %name% - BatNote
cls
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
echo y0ur t3x7 h@s b33n s@v3d
pause > NUL
exit

:: Команда menu

:menu
title m3nu - BatNote
cls
echo 1. f1l3
echo 2. v13w
echo 3. @b0u7
echo 4. c0mm@nds
echo 5. b@ck
choice /C 123450 > NUL
if %errorlevel%==1 goto file
if %errorlevel%==2 goto view
if %errorlevel%==3 goto about
if %errorlevel%==4 goto comhelp
if %errorlevel%==5 goto write
if %errorlevel%==6 goto dog

:: Меню "Файл"

:file
title f1l3 - BatNote
cls
echo 1. 0p3n
echo 2. s@v3 @s...
echo ----------------
echo 3. 3x17
echo ----------------
echo 4. b@ck
choice /C 1234 > NUL
if %errorlevel%==1 goto noteview
if %errorlevel%==2 goto saveas
if %errorlevel%==3 exit
if %errorlevel%==4 goto menu

:: Меню "Вид"

:view
title v13w - BatNote
cls
echo 1. ch01c3 th3m3
echo ----------------
echo 2. b@ck
choice /C 12 > NUL
if %errorlevel%==1 goto themeselector
if %errorlevel%==2 goto menu

:: О программе

:about
title @b0u7 BatNote HK v0.4
cls
echo BatNote HK - h@ck3r c0ns013.
echo 0f1c1@1 g1thub br@nch: https://github.com/dafroz/batnote_hk 
echo g37 1ucky ;)
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
title dafroz
echo "froz da froz (C) dafroz"
pause > NUL
goto name

::open
::cls
::batnoteview.bat
::exit

:saveas
cls
title s@v3 @s... - BatNote
set /p dir=">"
goto writeto

:writeto
title %name% - s@v3 @s... - BatNote
cls
set /p text=">"
goto savingas

:savingas
echo %Text% > %dir%%name%.txt
echo s@v3d
pause > NUL
exit

:themeselector
cls
choice /M "0n bl@ck th3m3?"
if %errorlevel%==1 color 0A
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
set /p viewdir=">"
if %viewdir%==edit goto write
cls
type %viewdir%
title %viewdir% - BatNote View v0.4
echo .
echo f0r sw1tch b@ck pr3ss sp@c3
PAUSE > NUL
goto write

:comhelp
title c0mm@nds - BatNote
cls
echo 9 c0mm@nds
echo 1 - menu.
echo 2 - cls.
echo 3 - dir.
echo 4 и 5 - time и date. 
echo 6 - s3cr37
echo 7 - saveas
echo 8 - themeselector
echo 9 - view
pause > NUL
goto write