---
layout: theme:post
title: "Global Gem Configuration"
date: 2015-11-04T16:00:00-05:00
tags: [ruby, admin]
---

When changing the gem source with `gem source --add <url>` it only changes in
`~/.gemrc` for that user, not globally. Make the change in `/etc/gemrc` to make
it global.
