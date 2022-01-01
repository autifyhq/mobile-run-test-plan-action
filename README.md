# Autify for Mobile Run Test Plan Action

[![integration-test](https://github.com/autifyhq/mobile-run-test-plan-action/actions/workflows/integration-test.yml/badge.svg)](https://github.com/autifyhq/mobile-run-test-plan-action/actions/workflows/integration-test.yml)
![GitHub Action Version](https://img.shields.io/github/v/release/autifyhq/web-run-test-plan-action.svg)
[![GitHub License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/autifyhq/web-run-test-plan-action/main/LICENSE)

## Inputs

| PARAMETER | DESCRIPTION | REQUIRED | DEFAULT | TYPE |
| --- | --- | --- | --- | --- |
| **autify_for_web_api_token** | Autify for Web API Token
| **test_plan_id** | Test Plan ID that you want to run | Yes | - | string |
| **test_plan_api_base_url** | Test Plan API base URL | No | 'https://app.autify.com/api/v1/schedules/' | string |

## Outputs

| Name | Description |
| --- | --- |
| **response** | API response json |

## See Also

API docs

- [Autify for Mobile API reference](https://mobile-app.autify.com/api/docs/index.html)

GitHub Actions from Autify

- [Autify for Web Run Test Plan Action](https://github.com/autifyhq/web-run-test-plan-action)

## License

[MIT License](LICENSE)
