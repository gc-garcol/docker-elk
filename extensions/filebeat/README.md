```shell
docker compose -f docker-compose.yml -f extensions/filebeat/filebeat-compose.yml up
docker compose -f docker-compose.yml -f extensions/filebeat/filebeat-compose.yml restart filebeat
```