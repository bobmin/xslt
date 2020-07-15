@ECHO off

REM -- OEM 850 --

SET SAXON=C:\SaxonHE10-1J\saxon-he-10.1.jar

REM Parameter prÅfen

IF "%~1"=="" GOTO usage

IF not exist %~s1 GOTO xmlerr
SET XMLFILE=%~1

SET XSLFILE=%XMLFILE:~0,-4%.xsl
IF not exist %XSLFILE% GOTO xslerr

SET HTMFILE=%XMLFILE:~0,-4%.htm

REM Konvertierung durchfÅhren

REM CLS
ECHO XML-TO-HTM...
ECHO (XML) %XMLFILE%
ECHO (XSL) %XSLFILE%
ECHO (HTM) %HTMFILE%

java -cp %SAXON% net.sf.saxon.Transform -s:%XMLFILE% -xsl:%XSLFILE% -o:%HTMFILE% -t
GOTO ende

REM Fehlerbehandlung/Hilfe

:xslerr
ECHO XSL-Datei nicht gefunden!
GOTO ende

:xmlerr
ECHO XML-Datei nicht gefunden!
GOTO ende

:usage
ECHO USAGE: lx.bat XML-Datei
ECHO.

:ende