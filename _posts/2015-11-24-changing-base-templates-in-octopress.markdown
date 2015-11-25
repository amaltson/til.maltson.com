---
layout: theme:post
title: "Changing Base Templates in Octopress"
date: 2015-11-24T23:00:27-05:00
---

A couple of days ago I tweeted.

{% twitter oembed https://twitter.com/amaltson/status/668624566659362816 %}

The issue I ran into was trying to get a different `head.html` to work with
[Octopress Genesis]. Turns out that while Jekyll by default looks at
`_includes/head.html`, when you use the Octopress Genesis, you make the
changes in the `_plugins/theme/includes` directory which maps to the [Octopress
Genesis includes] directory under `assets`.

Once I dropped a `head.html` in `_plugins/theme/includes` my new `<head>`
elements were picked up.

[Octopress Genesis]: https://github.com/octopress/genesis-theme
[Octopress Genesis includes]: https://github.com/octopress/genesis-theme/tree/master/assets/includes
