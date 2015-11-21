---
layout: theme:post
title: "Postgresql Accept All Connections"
date: 2015-11-20T22:30:52-05:00
---

Today I was trying to make changes to a postgresql wrapper cookbook to get it to
accept connections from it's hostname, but ran into issues when our recipes that
create databases tried to do it by talking to postgresql on localhost. Turns out
if you change postgresql's `listen_address` to the hostname, postgresql stops
listening on localhost.

The solution is to change [the listen address configuration] to `'*'`, which has
postgresql accept requests from anywhere.

[the listen address configuration]: https://github.com/hw-cookbooks/postgresql#configuration
