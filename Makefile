
DB_NAME=keycloak
DB_USER=keycloak
DB_PASSWORD=password
DB_ADDR=localhost
DB_PORT=5432
DB_SCHEMA=public
OUTPUT_FOLDER=output


sniff:
	mkdir -p $(OUTPUT_FOLDER)
	java -jar bin/schemaspy-6.1.0.jar -t pgsql --outputDirectory $(OUTPUT_FOLDER) -host $(DB_ADDR):$(DB_PORT) -u $(DB_USER) -p $(DB_PASSWORD) -s $(DB_SCHEMA) -db $(DB_NAME) -dp bin/postgresql-42.3.5.jar -vizjs

spinup.docker:
	docker-compose -f docker/docker-compose-keycloak-postgresql.yaml up
