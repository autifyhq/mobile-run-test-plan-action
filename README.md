# <TODO: REPO NAME>

> hogehoge

## Usage Examples

```yml
name: Autify for Mobile example

on: [push]

jobs:
  autify-for-mobile:
    runs-on: ubuntu-latest
    steps:
      - name: Funtional test
        uses: autifyhq/<TODO: REPO NAME>t@main
        env:
          AUTIFY_FOR_MOBILE_API_TOKEN: ${{ secrets.AUTIFY_FOR_MOBILE_API_TOKEN }}
        with:
          build_id: ${{ secrets.BUILD_ID }}
          test_plan_id: ${{ secrets.TEST_PLAN_ID }}
```

[![example](https://github.com/autifyhq/mobile-run-test-plan-github-action/actions/workflows/example.yml/badge.svg?branch=beta)](https://github.com/autifyhq/mobile-run-test-plan-github-action/actions/workflows/example.yml)


## Inputs

| PARAMETER | DESCRIPTION | REQUIRED | DEFAULT | TYPE |
| --- | --- | --- | --- | --- |
| build_id | | Yes | - | string |
| test_plan_id | | Yes | - | string |

## See Also

- [Autify for Mobile API reference](https://mobile-app.autify.com/api/docs/index.html)

## License

<TODO: REPO NAME> © [Autify Engineers](https://github.com/autifyhq). Released under the [MIT License](LICENSE).<br/>
Authored and maintained by [Autify Engineers](https://github.com/autifyhq) with help from [contributors](https://github.com/autifyhq/<TODO: REPO>/graphs/contributors)
