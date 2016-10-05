#!/bin/bash

curl --include --request GET http://localhost:3000/users \
  --header "Authorization: Token token=$TOKEN"


  curl --include --request GET https://dry-mesa-20099.herokuapp.com/pokemons \
    --header "Authorization: Token token=$TOKEN"
