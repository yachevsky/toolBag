#! /bin/bash

awk -F'[ "]+' '$7 == "/" { ipcount[$1]++ }
    END { for (i in ipcount) {
        printf "%15s - %d\n", i, ipcount[i] } }' logfile.log

# list IPs and sort them by most often occurences



awk -F'[ "]+' '$1 == "1.2.3.4" { pagecount[$7]++ }
    END { for (i in pagecount) {
        printf "%15s - %d\n", i, pagecount[i] } }' logfile.log
#show what pages were accessed by a user from a specific IP



awk '{print $9}' access.log | sort | uniq -c | sort -rn
#show http statuses with occurences



awk '{count[$9]++}; END { for (i in count) print i, count[i] }' access.log
# show http statuses with occurences

ifconfig | grep broadcast | awk '{print $2}' #show own ip

alias whatsip="echo $(ifconfig | grep broadcast | awk '{print $2}')" #show own ip
