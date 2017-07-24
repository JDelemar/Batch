@ECHO OFF

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                          ::
::  StartCode.bat                                                           ::
::                                                                          ::
::  Allows user to use Windows Open With to open using Visual Studio Code   ::
::  The "Send To" works as well                                             ::
::                                                                          ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Settings
SET APP="C:\Users\User\Documents\Portable\VSCode-win32-1.11.2\Code.exe"

echo Starting Visual Studio Code

:: Start with parameter/arguments
IF %1.==. GOTO NoParameter
START "" %APP% %1
GOTO End

:: Start with no parameter/arguments
:NoParameter
START "" %APP%

:: Exit
:End