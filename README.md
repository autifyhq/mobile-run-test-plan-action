# mobile-run-test-plan-action

> hogehoge

## Usage Examples

### Basic

```yml
name: Autify for Mobile example

on: [push]

jobs:
  autify-for-mobile:
    runs-on: ubuntu-latest
    steps:
      - name: Funtional test
        uses: autifyhq/mobile-run-test-plan-action@beta
        env:
          AUTIFY_FOR_MOBILE_API_TOKEN: ${{ secrets.AUTIFY_FOR_MOBILE_API_TOKEN }}
          AUTIFY_FOR_MOBILE_BUILD: ${{ secrets.BUILD_ID }}
          AUTIFY_FOR_MOBILE_TEST_PLAN_ID: ${{ secrets.TEST_PLAN_ID }}
```

[![example](https://github.com/autifyhq/mobile-run-test-plan-action/actions/workflows/example.yml/badge.svg?branch=beta)](https://github.com/autifyhq/mobile-run-test-plan-action/actions/workflows/example.yml)

### [WIP] Use with [`mobile-upload-build-action`](https://todo.com)

Run a Test Plan using the build you uploaded in another step

```yaml
name: Autify for Mobile example

on: [push]

jobs:
  autify-for-mobile:
    runs-on: ubuntu-latest
    steps:
      - name: Uploading a build
        uses: autifyhq/mobile-upload-build-action@beta
        env:
          AUTIFY_FOR_MOBILE_API_TOKEN: ${{ secrets.AUTIFY_FOR_MOBILE_API_TOKEN }}
          AUTIFY_FOR_MOBILE_PROJECT_ID: ${{ secrets.PROJECT_ID }}

      - name: Funtional test
        uses: autifyhq/mobile-run-test-plan-action@beta
        env:
          AUTIFY_FOR_MOBILE_API_TOKEN: ${{ secrets.AUTIFY_FOR_MOBILE_API_TOKEN }}
          AUTIFY_FOR_MOBILE_BUILD: ${{ secrets.BUILD_ID }}
          AUTIFY_FOR_MOBILE_TEST_PLAN_ID: ${{ secrets.TEST_PLAN_ID }}
```

[![with hogehoge](https://github.com/autifyhq/mobile-run-test-plan-action/actions/workflows/example.yml/badge.svg?branch=main)](https://github.com/autifyhq/mobile-run-test-plan-action/actions/workflows/example.yml)

## Inputs

| PARAMETER | DESCRIPTION | REQUIRED | DEFAULT | TYPE |
| --- | --- | --- | --- | --- |
| build_id | | Yes | - | string |
| test_plan_id | | Yes | - | string |

## See Also

- [Autify for Mobile API reference](https://mobile-app.autify.com/api/docs/index.html)

## License

[MIT License](LICENSE)
