#!/bin/bash
#echo "${ALLMYVARS:1:-1}" | sed "s/\"//g" | sed 's/,$//' | sed '/^[[:space:]]*$/d'
  echo "$ORG_VARS" | jq -r 'to_entries | .[] | .key + "=\"" + .value + "\""' | while read -r env_var; do
    # Append the variable to the temporary environment file
    #echo "export $env_var" >> ENV_FILE
    
    # Also append the variable to GITHUB_ENV for subsequent steps
    echo "$env_var"
  done
