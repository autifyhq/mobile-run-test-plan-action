# <TODO: REPO NAME>

> hogehoge

## Usage Examples

### Use as stand-alone

```yml
name: Autify for Mobile example

on: [push]

jobs:
  autify-for-mobile:
    runs-on: ubuntu-latest
    steps:
      - name: Funtional test
        uses: autifyhq/mobile-run-test-plan-github-action@beta
        env:
          AUTIFY_FOR_MOBILE_API_TOKEN: ${{ secrets.AUTIFY_FOR_MOBILE_API_TOKEN }}
        with:
          build_id: ${{ secrets.BUILD_ID }}
          test_plan_id: ${{ secrets.TEST_PLAN_ID }}
```

[![example](https://github.com/autifyhq/mobile-run-test-plan-github-action/actions/workflows/example.yml/badge.svg?branch=beta)](https://github.com/autifyhq/mobile-run-test-plan-github-action/actions/workflows/example.yml)

### [WIP] Use with [`mobile-upload-build-github-action`](https://todo.com)

Run a Test Plan using the build you uploaded in another step

```yaml
name: Autify for Mobile example

on: [push]

jobs:
  autify-for-mobile:
    runs-on: ubuntu-latest
    steps:
      - name: Upload a build
        uses: autifyhq/mobile-upload-build-github-action@beta
        env:
          AUTIFY_FOR_MOBILE_API_TOKEN: ${{ secrets.AUTIFY_FOR_MOBILE_API_TOKEN }}
        with:
          project_id: ${{ secrets.PROJECT_ID }}

      - name: Funtional test
        uses: autifyhq/mobile-run-test-plan-github-action@beta
        env:
          AUTIFY_FOR_MOBILE_API_TOKEN: ${{ secrets.AUTIFY_FOR_MOBILE_API_TOKEN }}
        with:
          build_id: ${{ secrets.BUILD_ID }}
          test_plan_id: ${{ secrets.TEST_PLAN_ID }}
```

[![with hogehoge](https://github.com/autifyhq/mobile-run-test-plan-github-action/actions/workflows/example.yml/badge.svg?branch=main)](https://github.com/autifyhq/mobile-run-test-plan-github-action/actions/workflows/example.yml)

## Inputs

| PARAMETER | DESCRIPTION | REQUIRED | DEFAULT | TYPE |
| --- | --- | --- | --- | --- |
| build_id | | Yes | - | string |
| test_plan_id | | Yes | - | string |

## See Also

- [Autify for Mobile API reference](https://mobile-app.autify.com/api/docs/index.html)

## License

[MIT License](LICENSE)
