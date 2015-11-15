---
layout: theme:post
title: "Redis Queue for HTTP Requests"
date: 2015-11-14T23:01:46-05:00
---

I'm attending (and speaking) at [Full Stack TO 2015] this weekend and one of
the talks was from BrainTree. The speaker described how their custom built app
server, `broxy` accepts all API requests from clients and then enqueue them
into Redis. Their Rails app would then dequeue and process those requests.
This let them take down the entire backend, have the Redis queue build up, and
then bring the backend back up and avoid any downtime.

The speaker mentioned they ultimately got rid of their custom app server because
they had some issues and it was in general superseded by other tools (was it
maybe the Kafka implementation he mentioned?). Regardless, I thought this idea
was very novel.

[Full Stack TO 2015]: https://fsto.com
