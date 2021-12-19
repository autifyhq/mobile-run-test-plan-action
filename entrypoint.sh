#!/bin/sh -l

main() {
  echo ${{ inputs.build_id }}
  test_result_id=1
  echo "::set-output name=command::${test_result_id}"
}

# run
main "$@"