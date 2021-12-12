#!/bin/sh -l

readonly API_ENDPOINT="https://mobile-app.autify.com/api/v1"
readonly BUILD_ID=${1}
readonly TEST_PLAN_ID=${2}

run_test_plan() {
  echo $(curl -s -X POST \
    -H "Authorization: Bearer ${AUTIFY_FOR_MOBILE_API_TOKEN}" \
    -H "Content-Type: application/json" \
    -d "{\"build_id\":\"${BUILD_ID}\"}" \
    "https://mobile-app.autify.com/api/v1/test_plans/${TEST_PLAN_ID}/test_plan_results")
}

main() {
  response=$(run_test_plan)
  
  if [[ "$( echo $response | jq 'has("errors")' )" == "true" ]]; then
    echo $response | jq .
    exit 1
  fi

  echo $response | jq .
} 

# run
main "$@"