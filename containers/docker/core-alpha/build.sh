#!/bin/bash

echo -ne "username \033[35m>\033[0m "
read username

unset password
unset count
count=0
echo -ne "password \033[35m>\033[0m "
prompt=""
while IFS= read -p "$prompt" -r -s -n 1 char
do
  if [[ $char == $'\0' ]]
  then
    echo
    break
  fi
  if [[ $char == $'\177' ]]
  then
    if [ $count -gt 0 ]
    then
      count=$((count-1))
      prompt=$'\b \b'
      password="${password%?}"
    else
      prompt=""
    fi
  else
    count=$((count+1))
    prompt='*'
    password+="$char"
  fi
done

echo -ne "email \033[35m>\033[0m "
read email

docker login \
  -u="$username" \
  -p="$password" \
  -e="$email"

repo="$username/docker:core-alpha"

docker build -t $repo .

docker push $repo

