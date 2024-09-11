#!/bin/bash
echo "${ALLMYVARS:1:-1}" | sed "s/\"//g" | sed 's/,$//' | sed '/^[[:space:]]*$/d'
