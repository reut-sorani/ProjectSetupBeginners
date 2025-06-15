#!/bin/bash
kafka-topics.sh \
  --create \
  --topic output_results \
  --partitions 3 \
  --replication-factor 1 \
  --if-not-exists \
  --bootstrap-server localhost:9092

# Create topic: input_zip_topic
kafka-topics.sh \
  --create \
  --topic input_zip_topic \
  --partitions 3 \
  --replication-factor 1 \
  --if-not-exists \
  --bootstrap-server localhost:9092