#!/bin/bash

curl "http://localhost:4741/ingredients/${ID}" \
  --include \
  --request DELETE \

echo
