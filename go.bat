@ECHO off

REM -- OEM 850 --

SET SAXON=C:\SaxonHE10-1J\saxon-he-10.1.jar
SET XSLFILE=C:\Entwicklung\Projekte\xslt\go.xsl

REM Parameter prÅfen

IF "%~1"=="" GOTO usage

IF not exist %~s1 GOTO htmerr
SET HTMFILE=%~1

SET XMLFILE=%HTMFILE:~0,-4%_go.xml

REM Konvertierung durchfÅhren

REM CLS
ECHO HTM-TO-XML...
ECHO (HTM) %HTMFILE%
ECHO (XSL) %XSLFILE%
ECHO (XML) %XMLFILE%

java -cp %SAXON% net.sf.saxon.Transform -s:%HTMFILE% -xsl:%XSLFILE% -o:%XMLFILE% -t -warnings:fatal
GOTO ende

REM Fehlerbehandlung/Hilfe

:htmerr
ECHO HTM-Datei nicht gefunden!
GOTO ende

:usage
ECHO USAGE: go.bat HTM-Datei
ECHO.

:ende