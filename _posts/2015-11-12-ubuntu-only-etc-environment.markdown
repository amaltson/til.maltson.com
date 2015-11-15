---
layout: theme:post
title: "Ubuntu Only: /etc/environment"
date: 2015-11-12T18:00:00-05:00
---

Making sure environment variables are available to all users on Linux is a
common problem. One thing I learned from playing with [lattice.cf] is dropping
environment variables in `/etc/environment` is a really nice way to accomplish
that.

However, as a coworker pointed out, `/etc/environment` is an **Ubuntu only**
concept, and does not translate to other distributions like Red Hat or CentOS.
Guess I'm stuck with `/etc/profile.d/<some-script>.sh`.

[lattice.cf]: http://lattice.cf
