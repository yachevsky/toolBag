#! /bin/bash
grep -win -A 2 "term" file.txt #show lines above
grep -win -B 2 "term" file txt # show 2 lines below
grep -win -C 2 "term" file.txt # show 2 lines below and 2 above
grep -win "term" file.txt #show exect matches, without case sensitivity, show line number
grep -win "term" ./* # search in whole current dir
grep -win "term" ./*.txt #search within curr dir without going deeper
grep -winr "term" ./ #search recursively in given directory
grep -wirl "term" ./ #show the files containg results
grep -winc "term" ./ #show files and number of matches
grep  -P "\d{3}-\d{3}-\d{4}" #tell grep that regex is perl compatible
