---
layout: theme:post
title: "Wrap Existing Line in Vim"
date: 2015-12-15T21:53:54-05:00
---

I write a lot of Markdown (including these posts) in my editor of choice, Vim. I
also like to stick with 80 character limit to all my text, so Vim autowraps at
80 characters. Sometimes I want to restructure some text, and making that text
wrap at 80 characters again turns out to be an annoying and manual task. That
is, until you read a [blog post from thoughtbot] which introduces you to the
built in `gq` reformat command in Vim.

Simply select a bunch of text with `v` or `V`, type `gq` and your lines are
rewrapped.  For best results, you can `J` a bunch of poorly formatted lines
together into one line, then `V` those lines and have `gq` do its formatting
magic.

[blog post from thoughtbot]: https://robots.thoughtbot.com/wrap-existing-text-at-80-characters-in-vim
