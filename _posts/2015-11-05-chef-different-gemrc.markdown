---
layout: post
title: "Chef Has A Different Gemrc"
date: 2015-11-05T22:42:47-05:00
categories: ruby,admin
---

While the global `/etc/gemrc` configuration is standard for system installed gems, gems
that come in omnibus packages like `chef-client`, `chefdk`, etc don't respect
this setting. It [turns out] for `chef-client` it's `/opt/chef/embedded/etc/gemrc`.

[turns out]: http://stackoverflow.com/questions/22259362/where-chef-store-the-gem-source-repository/28816880#28816880
