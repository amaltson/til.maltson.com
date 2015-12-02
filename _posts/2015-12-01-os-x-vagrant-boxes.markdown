---
layout: theme:post
title: "OS X Vagrant Boxes"
date: 2015-12-01T22:53:01-05:00
---

Last year while automating my OS X [workstation with Chef], I wanted to get a
Vagrant OS X machine to test the Chef recipes on. There didn't seem to be an
easy way [at the time], so I left my cookbook untested 😭🐼.

Last week my buddy asked this very same question, are there any OS X Vagrant
boxes? As I typed the email saying there aren't any, I decided to do a quick
search on [Hashicorp's Atlas]. To my disbelief, there are actually [many OS X
Vagrant boxes] hosted on Atlas. It turns out that because of the [license
changes], running OS X virtual machines is easier than ever.

[workstation with Chef]: https://github.com/amaltson/workstation
[at the time]: http://ntk.me/2012/09/07/os-x-on-os-x/http://ntk.me/2012/09/07/os-x-on-os-x/
[Hashicorp's Atlas]: https://atlas.hashicorp.com
[many OS X Vagrant boxes]: https://atlas.hashicorp.com/boxes/search?utf8=✓&sort=&provider=&q=os+x
[license changes]: https://github.com/AndrewDryga/vagrant-box-osx#os-x-licensing
