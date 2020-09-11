HOST=https://74cng344za.execute-api.us-east-1.amazonaws.com

TOKEN=$(curl -X POST \
    --silent \
    -H 'Content-Type: application/json' \
    --data '{"username":"samuel", "password": "1234"}' \
    $HOST/dev/login \
    | jq '.token' \
    | sed 's/"//g' \
    | tee token.log
)

echo "Token: $TOKEN"
echo

curl --silent $HOST/dev/public | xargs echo "PUBLIC API: $1"

curl \
    --silent \
    -H "Authorization:$TOKEN" \
    $HOST/dev/private \
    | xargs echo "PRIVATE API: $1"

echo