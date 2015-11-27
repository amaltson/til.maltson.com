---
layout: theme:post
title: "Rendering Tweets in Jekyll/Octopress"
date: 2015-11-26T22:43:11-05:00
---

In my [previous TIL] I wanted to render a tweet I had made about Octopress. I
thought, surely there's a way to do this in Jekyll. With the right keyword
searches on Google, I came across [jekyll-twitter-plugin].

After adding `jekyll-twitter-plugin` to the `Gemfile` and `_config.yml`, you
need to go and get some Twitter API keys. Make sure not to commit these keys
to source control, I opted for the environment variable approach. With that in
place, you can now add a tweet with a simple `liquid` tag like so:

```
{{"{% twitter oembed <link to tweet> "}}%}
```

Simple and elegant.

[previous TIL]: http://til.maltson.com/2015/11/24/changing-base-templates-in-octopress.html
[jekyll-twitter-plugin]: https://github.com/rob-murray/jekyll-twitter-plugin
