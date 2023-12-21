function fish_greeting
    set OPENCOLOR "\x1b[33m"
    set CLOSECOLOR "\x1b[0m" 
    set BOLD_O  "\033[1m"
    set BOLD_C  "\033[m"

    printf $BOLD_O
    printf " OS: " 
    printf $BOLD_C

    printf $OPENCOLOR
    bash -c "uname -o"
    printf $CLOSECOLOR

    printf $BOLD_O
    printf " Hostname: " 
    printf $BOLD_C

    printf $OPENCOLOR
    bash -c "whoami"
    printf $CLOSECOLOR

    printf $BOLD_O
    printf " Uptime: "
    printf $BOLD_C

    printf $OPENCOLOR
    bash -c "uptime -p"
    printf $CLOSECOLOR

    printf $BOLD_O
    printf " Disk usage:"
    printf $BOLD_C

    printf "\n\n\t"
    bash -c "df -lH --output=file,used,size,pcent /dev/sda3 | tail -n+2"
    printf "\n"

    printf $BOLD_O
    printf " Network: \n\t"
    printf $BOLD_C

    bash -c "ip -4 -brief -o addres show | grep  wlp2s0f0u6"
    printf "\t"
    bash -c "ip -6 -brief -o addres show | grep   wlp2s0f0u6"
    printf "\n"

    printf $BOLD_O
    printf " Tasks: \n"
    printf $BOLD_C
    bash -c "cmo list"
end
