@ECHO OFF
IF "%1"=="" GOTO CURRENT
python %~dp0\CubeMX2Makefile.py %1
GOTO DONE
:CURRENT
python %~dp0\CubeMX2Makefile.py ./
:DONE
