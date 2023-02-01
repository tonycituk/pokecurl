# !/bin/bash

#echo $1
pokemon=$1

if [ "$pokemon" = "" ]
then
    echo "Please make sure you are entering a pokemon."
else
    result=$(curl https://pokeapi.co/api/v2/pokemon/$pokemon --silent)
    if [ "$result" == "Not Found" ]
    then
        echo $1 "does not exist bro :(. Check if you are entering it's correct name."
    else
        id=$(echo $result | jq '.id')
        name=$(echo $result | jq '.name' | tr -d '"')
        weight=$(echo $result | jq '.weight')
        height=$(echo $result | jq '.height')
        order=$(echo $result | jq '.order')
        echo Id=$id, name=$name, weight=$weight, height=$height, order=$order
    fi
fi