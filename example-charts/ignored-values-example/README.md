# ignored-values-example

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

Based on best-values-example

**Homepage:** <https://github.com/nholuongut/helm-docs/tree/master/example-charts/ignored-values-example>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Jakub Buczak | <jakub.buczak@gmail.com> |  |

## Source Code

* <https://github.com/nholuongut/helm-docs/tree/master/example-charts/ignored-values-example>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| config.databasesToCreate[0] | string | `"postgresql"` | default database for storage of database metadata |
| config.databasesToCreate[1] | string | `"hashbash"` | database for the [hashbash](https://github.com/nholuongut/hashbash) project |
| config.usersToCreate[0] | object | `{"admin":true,"name":"root"}` | admin user |
| config.usersToCreate[1] | object | `{"name":"hashbash","readwriteDatabases":["hashbash"]}` | user with access to the database with the same name |
| configWithAllValuesIgnored | object | `{}` |  |
| statefulset.extraVolumes | list | `[{"emptyDir":{},"name":"data"}]` | Additional volumes to be mounted into the database container |
| statefulset.image.repository | string | `"jnorwood/postgresq"` | Image to use for deploying, must support an entrypoint which creates users/databases from appropriate config files |
| statefulset.image.tag | string | `"11"` |  |
| statefulset.livenessProbe | object | `{"enabled":false}` | Configure the healthcheck for the database |
| statefulset.podLabels | object | `{}` | The labels to be applied to instances of the database |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.0](https://github.com/nholuongut/helm-docs/releases/v1.14.0)