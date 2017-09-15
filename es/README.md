# elasticsearch

One master es node, X data notes, one kibana node

$ dc down -v
$ dc up --scale es=2 -d

$ d ps -a
 (https://docs.docker.com/engine/reference/commandline/ps/#filtering)

# Kibana
localhost:5601

# es master commands
http://localhost:9200/_cluster/health?pretty
http://localhost:9200/
http://localhost:9200/_cat/indices?v
