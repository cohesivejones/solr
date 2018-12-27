## Create collection headlines_1 with sample data
docker-compose exec solr bin/solr create_collection -c headlines_1 -d /opt/solr/server/solr/headlines/conf
docker-compose exec solr bin/post -c headlines_1 /opt/mysolrhome/sample-data.xml
## Set alias headlines to collection headlines_1
curl "http://localhost:8983/solr/admin/collections?action=CREATEALIAS&name=headlines&collections=headlines_1"
