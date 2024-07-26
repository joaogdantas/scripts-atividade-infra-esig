#!/bin/bash

if ps aux | grep -q "[j]boss"; then
    echo "JBoss está rodando."

    ps -eo pid,etime,cmd | grep "[j]boss"
else
    echo "JBoss não está rodando."
fi