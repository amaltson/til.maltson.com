---
layout: theme:post
title: "ElasticSearch Clusters Balance Data"
date: 2015-11-11T21:34:47-05:00
---

Today I added a new ElasticSearch data node to our two node cluster and was
pleasantly surprised when disk usage on the original two nodes dropped by a
third. Turns out [ElasticSearch distributes shards] across all the data nodes.
Very cool!

[ElasticSearch distributes shards]: https://www.elastic.co/guide/en/elasticsearch/reference/current/_basic_concepts.html#_shards_amp_replicas
