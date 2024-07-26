#!/bin/bash

if ps aux | grep -q "[c]atalina"; then
    echo "Tomcat está rodando."
    
    ps -eo pid,etime,cmd | grep "[c]atalina"
else
    echo "Tomcat não está rodando."
fi