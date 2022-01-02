# Autify for Mobile Run Test Plan Action

[![integration-test](https://github.com/autifyhq/mobile-run-test-plan-action/actions/workflows/integration-test.yml/badge.svg)](https://github.com/autifyhq/mobile-run-test-plan-action/actions/workflows/integration-test.yml)
![GitHub Action Version](https://img.shields.io/github/v/release/autifyhq/mobile-run-test-plan-action.svg)
[![GitHub release date](https://img.shields.io/github/release-date/autifyhq/mobile-run-test-plan-action.svg)](https://github.com/autifyhq/mobile-run-test-plan-action/releases)
[![GitHub License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/autifyhq/mobile-run-test-plan-action/main/LICENSE)

## Inputs

| PARAMETER | DESCRIPTION | REQUIRED | DEFAULT | TYPE |
| --- | --- | --- | --- | --- |
| **autify_for_mobile_api_token** | Autify for Mobile API Token | Yes | - | string |
| **test_plan_id** | Test Plan ID that you want to run | Yes | - | string |
| **build_id** | Build ID that you want to run | Yes | - | string |
| **test_plan_api_base_url** | Test Plan API base URL | No | 'https://mobile-app.autify.com/api/v1/test_plans/' | string |

## Outputs

| Name | Description |
| --- | --- |
| **response** | API response json |

## Usage Examples

> Runs a Test Plan on Autify for Mobile.

```yaml
name: "example"
on: [push]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - name: Funtional test
        id: functional-test
        uses: autifyhq/mobile-run-test-plan-action@v1.0.0
        with:
          autify_for_mobile_api_token: ${{ secrets.AUTIFY_FOR_MOBILE_API_TOKEN }}
          test_plan_id: ${{ secrets.TEST_PLAN_ID }}
          build_id: ${{ secrets.BUILD_ID }}
```

## See Also

### API docs
- [Autify for Mobile API reference](https://mobile-app.autify.com/api/docs/index.html)

### GitHub Actions from Autify
- [Autify for Web Run Test Plan Action](https://github.com/autifyhq/web-run-test-plan-action)

## License

[MIT License](LICENSE)
