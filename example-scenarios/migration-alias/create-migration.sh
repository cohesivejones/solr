# Create headlines_2 collection with seed data and different schema
docker-compose exec solr bin/solr create_collection -c headlines_2 -d /opt/solr/server/solr/new-headlines-schema/conf
docker-compose exec solr bin/post -c headlines_2 /opt/mysolrhome/new-data.xml

## Set alias headlines to collection headlines_2
curl "http://localhost:8983/solr/admin/collections?action=CREATEALIAS&name=headlines&collections=headlines_2"