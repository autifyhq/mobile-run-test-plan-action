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

[![example-basic](https://github.com/autifyhq/mobile-run-test-plan-action/actions/workflows/example-basic.yml/badge.svg)](https://github.com/autifyhq/mobile-run-test-plan-action/actions/workflows/example-basic.yml)

### [`mobile-upload-build-action`](https://github.com/autifyhq/mobile-upload-build-action)

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

[![example-upload-build](https://github.com/autifyhq/mobile-run-test-plan-action/actions/workflows/example-upload-build.yml/badge.svg)](https://github.com/autifyhq/mobile-run-test-plan-action/actions/workflows/example-upload-build.yml)

## Inputs

| PARAMETER | DESCRIPTION | REQUIRED | DEFAULT | TYPE |
| --- | --- | --- | --- | --- |
| build_id | | Yes | - | string |
| test_plan_id | | Yes | - | string |

## See Also

- [Autify for Mobile API reference](https://mobile-app.autify.com/api/docs/index.html)

## License

[MIT License](LICENSE)
