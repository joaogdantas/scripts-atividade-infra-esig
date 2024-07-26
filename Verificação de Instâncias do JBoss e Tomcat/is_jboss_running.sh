#!/bin/bash

if ps aux | grep -q "[j]boss"; then
    echo "JBoss está rodando."
else
    echo "JBoss não está rodando."
fi