[integration-test-badge]: https://github.com/autifyhq/mobile-run-test-plan-action/actions/workflows/integration-test.yml/badge.svg
[integration-test-url]: https://github.com/autifyhq/mobile-run-test-plan-action/actions/workflows/integration-test.yml

[release-badge]: https://img.shields.io/github/v/release/autifyhq/mobile-run-test-plan-action.svg
[release-url]: https://github.com/autifyhq/mobile-run-test-plan-action/releases

[release-date-badge]: https://img.shields.io/github/release-date/autifyhq/mobile-run-test-plan-action.svg
[release-date-url]: https://github.com/autifyhq/mobile-run-test-plan-action/releases

[license-badge]: https://img.shields.io/badge/license-MIT-lightgrey.svg
[license-url]: https://raw.githubusercontent.com/autifyhq/mobile-run-test-plan-action/main/LICENSE

# Autify for Mobile Run Test Plan Action

[![Test][integration-test-badge]][integration-test-url]
[![Release][release-badge]][release-url]
[![Release date][release-date-badge]][release-date-url]
[![License][license-badge]][license-url]

## Inputs

| PARAMETER | DESCRIPTION | REQUIRED | DEFAULT | TYPE |
| --- | --- | --- | --- | --- |
| **autify_for_mobile_api_token** | Autify for Mobile API Token | Yes | - | string |
| **test_plan_id** | Test Plan ID that you want to run | Yes | - | string |
| **build_id** | Build ID that you want to run | Yes | - | string |
| **test_plan_api_base_url** | Test Plan API base URL | No | `https://mobile-app.autify.com/api/v1/test_plans/` | string |

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
