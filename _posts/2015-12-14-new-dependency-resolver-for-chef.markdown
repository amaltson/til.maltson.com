---
layout: theme:post
title: "New Dependency Resolver for Chef"
date: 2015-12-14T22:48:34-05:00
---

The Chef mailing list moved to a [Discourse forum] a little while back, which
makes asking questions and having discussions a pleasure (I 💜  Discourse).

We've been having a bunch of problems resolving `Berkshelf` and `chef-client`
dependencies, so I decided to ask a question. The helpful [martinb3 pointed me
to Berkshelf master]. It turns out, `Berkshelf` is working on a new dependency
resolution system in the [solve gem]. This new resolver is also written in pure
Ruby, which means no pesky C extensions via `gecode`.


[Discourse forum]: https://discourse.chef.io
[martinb3 pointed me to Berkshelf master]: https://discourse.chef.io/t/strategies-for-debugging-with-dependency-resolution-issues/7366/4
[solve gem]: https://github.com/berkshelf/solve
