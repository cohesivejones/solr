# Solr
Sample code for indexing data with Solr

### Getting Started
1. Install docker for Mac
1. Run docker-compose build
1. Run docker-compose up -d
1. Run ./create-records.sh to create records and set alias headline to collection headline_1
1. Visit http://localhost:8983/solr/#/headlines/query to query data

### Scenario new migration
1. Run `example-scenarios/migration-alias/query-records-with-alias.sh` and observe that the query on alias `headlines` returns descending order of records based on the value `status`
2. Run `example-scenarios/migration-alias/create-migration.sh` and observe that a new collection called `headline_2` with a new `status` called `new` is created. Observe that the new data now contains a record with `status` of `new`
3. Run `example-scenarios/migration-alias/query-records-with-alias.sh` again and observe that the query now returns result from collection `headline_2` successfully
