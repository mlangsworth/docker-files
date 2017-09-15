#!/bin/bash

curl -XPOST https://search-live-es.domain.com.au/listings-read/_search?size=0 \
     -d @- <<EOF
{
  "size": 0, 
  "query": {
    "term": {
      "suburb": {
        "value": "nsw"
      }
    }
  },
  "aggs": {
    "listings-count": {
      "terms": {
        "field": "suburb",
        "size": 10000
      }
    }
  }
}
EOF 