#!/bin/bash
kafka-topics.sh \
  --create \
  --topic output_results \
  --partitions 3 \
  --replication-factor 1 \
  --if-not-exists \
  --bootstrap-server localhost:9092