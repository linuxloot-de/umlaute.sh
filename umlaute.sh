#!/bin/bash
# Ersetzt Deutsche Umlaute durch HTML Code Sequenzen
# Autor: Adrian Feld (adrian@adminquest.de)
# Syntax: umlaute.sh <meinedatei.html> z. B. ./umlaute.sh index.html

# Kein Backup kein Mitleid
cp $1 $1.bak             

# HTML Umstellung
sed -i -e 's/\Ä/\&Auml;/g' \
    -i -e 's/\ä/\&auml;/g' \
    -i -e 's/\Ö/\&Ouml;/g' \
    -i -e 's/\ö/\&ouml;/g' \
    -i -e 's/\Ü/\&Uuml;/g' \
	-i -e 's/\ß/\&szlig;/g' \
    -i -e 's/\ü/\&uuml;/g' \
    -i -e 's/\^&/\&amp;/g' \
    -i -e 's/\^-/\&ndash;/g' \
    -i -e 's/\^ /\&nbsp;/g' \
    -i -e 's/\^</\&lt;/g' \
    -i -e 's/\^>/\&gt;/g' \
    -i -e 's/\^x/\&times;/g' \
    -i -e 's/\^\^/\&#94;/g' \
    -i -e 's/\^r/\&rarr;/g' \
    -i -e 's/\^b/\&bull;/g' \
    -i -e 's/\^e/\&#8644;/g' \
$1