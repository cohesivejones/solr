FROM solr:7.5.0
COPY ./sample-data.xml /opt/mysolrhome
CMD ["docker-entrypoint.sh", "solr-precreate", "headlines", "/opt/solr/server/solr/headlines/conf"]
