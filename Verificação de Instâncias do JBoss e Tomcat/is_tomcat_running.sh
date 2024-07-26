#!/bin/bash

if ps aux | grep -q "[c]atalina"; then
    echo "Tomcat está rodando."
else
    echo "Tomcat não está rodando."
fi