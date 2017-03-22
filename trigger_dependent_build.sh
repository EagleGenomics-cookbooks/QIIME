USER=$1
REPO=$2
ACCESS=$3
TOKEN=$4

body='{
"request": {
  "branch":"master",
  "message": "Triggered build - qiime dependency"
}}'

if [ "$ACCESS" == "private" ]
then
  url='api.travis-ci.com'
else
  url='api.travis-ci.org'
fi

curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Travis-API-Version: 3" \
  -H "Authorization: token ${TOKEN}" \
  -d "$body" \
  https://$url/repo/$USER%2F$REPO/requests \
  | tee /tmp/travis-request-output.$$.txt
