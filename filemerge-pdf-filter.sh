#!/bin/sh
pdftotext -layout -nopgbrk -q "$1" - | iconv -t ascii//TRANSLIT

