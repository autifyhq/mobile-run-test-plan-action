#!/bin/sh -l

readonly API_ENDPOINT="https://mobile-app.autify.com/api/v1"
readonly AUTIFY_TEST_PLAN_ID=${1}
readonly AUTIFY_BUILD_ID=${2}

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
}

# parameters
info "parameters:"
info "* test_plan_id: ${AUTIFY_TEST_PLAN_ID}"
info "* build_id: ${AUTIFY_BUILD_ID}"

# run
main "$@"