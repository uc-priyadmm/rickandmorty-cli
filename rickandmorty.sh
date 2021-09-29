#!/bin/bash
#PROJECT1
#RICKANDMORTYCLI by Mayank Mani Priyadarshi

echo Welcome to THE Rick ..............................................
img2ascii https://avatarfiles.alphacoders.com/297/297730.jpg
echo ....................................... and Morty CLI by Mayank Mani Priyadarshi

echo ""
echo Please Entre Character ID Number.

echo ""

read ID

echo""


img2ascii https://rickandmortyapi.com/api/character/avatar/$ID.jpeg      #CONVERT IMAGE TO ASCII


DATA=$(curl -s https://rickandmortyapi.com/api/character/$ID | jq '.')   #RICKANDMORTYAPI



NAME=$(echo $DATA | jq .name)
LOCATION=$(echo $DATA | jq .location.name)
SPECIES=$(echo $DATA | jq .species)
STATUS=$(echo $DATA | jq .status)
ORIGIN=$(echo $DATA | jq .origin.name)

echo ""
echo ""

echo Name of the character is "$NAME"
echo ""
echo ID belongs to $ORIGIN
echo ""
echo Last known location is the "$LOCATION"
echo ""
echo ID belongs to "$SPECIES" species
echo ""
echo Mortality status is currently $STATUS
echo ""
