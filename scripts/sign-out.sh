#!/bin/bash

curl --include --request DELETE http://localhost:3000/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"


  curl --include --request DELETE http://localhost:3000/pokemons/10 \
    --header "Content-Type: application/json"
