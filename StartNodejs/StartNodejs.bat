@ECHO OFF

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                          ::
::  StartNode.bat                                                           ::
::                                                                          ::
::  Starts Nodejs on a Windows computer                                     ::
::  Changes the PATH to use node, npm, and other tools                      ::
::  Customizes the "Start in" directory                                     ::
::                                                                          ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Settings
SET GREETING="Nodejs prompt"
SET NODEVERSION="node v6.11.0"
SET NPMVERSION="npm v3.10.10"
SET NEWPATH=C:\Users\User\Documents\Portable\node-v6.11.0-win-x64;C:\Program Files (x86)\Java\jre1.8.0_131\bin;%SystemRoot%\system32;%SystemRoot%;%SystemRoot%\System32\Wbem;%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\
SET STARTIN=C:\Users\User\Documents\Programming\nodejs

:: Start Node
START %NODEVERSION% /d %STARTIN% cmd.exe /k "color 17 & set PATH=%NEWPATH% & echo %GREETING:~1,-1% & echo %NODEVERSION:~1,-1% & echo %NPMVERSION:~1,-1%"