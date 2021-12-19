#!/bin/sh -l

run_test_plan() {
  echo $(curl -s -X POST \
    -H "Authorization: Bearer ${AUTIFY_FOR_MOBILE_API_TOKEN}" \
    -H "Content-Type: application/json" \
    -d "{\"build_id\":\"${AUTIFY_FOR_MOBILE_BUILD_ID}\"}" \
    "https://mobile-app.autify.com/api/v1/test_plans/${AUTIFY_FOR_MOBILE_TEST_PLAN_ID}/test_plan_results")
}

main() {
  # exit 0

  # response=$(run_test_plan)
  
  # if [[ "$( echo $response | jq 'has("errors")' )" == "true" ]]; then
  #   error "Failed to run test plan"
  #   echo $response | jq .
  #   exit 1
  # fi

  # success "Test plan ran"
  # echo $response | jq .

  echo ${{ input.build_id }}

  # Outputs
  test_result_id=1  
  echo ::set-output name=command::$test_result_id
}

# run
main "$@"