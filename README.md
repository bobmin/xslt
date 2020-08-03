# Dokumente per XSLT formatieren

![](https://img.shields.io/github/languages/code-size/bobmin/xslt.svg?style=flat) 
![](https://img.shields.io/github/last-commit/bobmin/xslt.svg?style=flat) 
![](https://img.shields.io/github/languages/top/bobmin/xslt.svg?style=flat)

## Grundlagen XSLT

* [FU Berlin, Transformation von XML-Dokumenten](http://www.ag-nbi.de/lehre/07/V_XML/Folien/06_XSLT.pdf)
* [W3SCHOOLS, XSLT](https://www.w3schools.com/xml/xsl_intro.asp)
* [MDN, XSLT](https://developer.mozilla.org/en-US/docs/Web/XSLT)
* [data2type, Übersicht zu XSLT](https://www.data2type.de/xml-xslt-xslfo/xslt/xslt-kochbuch/xpath/knoten-filtern/)
* [SAXON, XSLT and XQuery Processor](https://www.saxonica.com/documentation/#!using-xsl/commandline)

## Beispielanwendung

<img src="https://raw.githubusercontent.com/bobmin/xslt/master/usecase_lxgo.png" alt="Usecase Lxgo" />

* mit `lx.bat` die XML-Datei zum Arbeitsdokument (HTML) konvertieren
* über `go.bat` aus Arbeitsdokument das Zielformat ableiten (XML)

<img src="https://raw.githubusercontent.com/bobmin/xslt/master/lx.jpg" width="450px" alt="Beispiel Lx-Ausgabe" />

## Arbeitsumgebung

[Git](https://git-scm.com/download) und [VSCode](https://code.visualstudio.com/) mit folgenden Erweiterungen

* XML Tools
* Live Server

## Arbeitsablauf

* in VSCode das Projektverzeichnis öffnen
* `Go Live` in Statusleiste (rechts unten) anklicken
* Browser startet und zeigt Projektordner
* `index.htm` öffnen und Datenblatt wählen
* XSL-Datei vom Datenblatt in VSCode bearbeiten
* Änderungen in XSL-Datei speichern
* Browser-Anzeige wird automatisch aktualisiert

Tipp: VSCode und Browser nebeneinander öffnen

## Workaround: CORS-Anfrage im Firefox 78

nur gebraucht, wenn Live Server im VSCode nicht eingesetzt wird und die Dateien per `file://` geöffnet werden

<img src="https://raw.githubusercontent.com/bobmin/xslt/master/firefox_workaround.png" width="400" alt="Screenshot Firefox" />
