FROM solr:7.5.0
COPY ./sample-data.xml /opt/mysolrhome
COPY ./example-scenarios/migration-alias/new-data/new-data.xml /opt/mysolrhome
CMD docker-entrypoint.sh solr start -c -f
