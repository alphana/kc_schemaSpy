# Keycloak SchemaSpy schema creator 

Export Keycloakc DB as SchemaSpy format

# Makefile
We use Makefile for all for the invocation

# How it works?

`make <api option>`


# API

All projects' Makefiles should provide the following commands, if applicable:

### `make sniff`

See `make sniff [args]` run the application to create output

Arguments with default values listed as followings

```Makefile
DB_NAME=keycloak
DB_USER=keycloak
DB_PASSWORD=password
DB_ADDR=localhost
DB_PORT=5432
DB_SCHEMA=public
OUTPUT_FOLDER=output
```
### `make spinup.docker`
Spinup a 'KC' instance with a 'Postgres' configuration

```Makefile
export LC_CTYPE=en_GB.UTF-8
```
