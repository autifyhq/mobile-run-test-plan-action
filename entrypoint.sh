#!/bin/sh -l

readonly API_ENDPOINT="https://mobile-app.autify.com/api/v1"
readonly AUTIFY_PROJECT_ID=${1}
readonly AUTIFY_TEST_PLAN_ID=${2}
readonly AUTIFY_BUILD_ID=${3}

info() {
  echo -e "$1"
}

success() {
  echo -e "\033[00;32m $1 \033[0m"
}

error() {
  echo -e "\033[00;31m $1 \033[0m"
}

main() {
  jq --version

  response=$(curl -X POST \
    -H "Authorization: Bearer ${AUTIFY_TOKEN}" \
    -H "Content-Type: application/json" \
    -d @<(cat <<EOF
    { "build_id": "${AUTIFY_BUILD_ID}" }
    EOF
    ) \
    "https://mobile-app.autify.com/api/v1/test_plans/${AUTIFY_TEST_PLAN_ID}/test_plan_results")

  test_plan_result_id=$(echo "${response}" | jq -r .id)
  echo -e "\033[00;32m * https://mobile-app.autify.com/projects/${AUTIFY_PROJECT_ID}/results/${test_plan_result_id} \033[0m"
}

# parameters
info "parameters:"
info "* project_id: ${AUTIFY_PROJECT_ID}"
info "* test_plan_id: ${AUTIFY_TEST_PLAN_ID}"
info "* build_id: ${AUTIFY_BUILD_ID}"

# run
main "$@"