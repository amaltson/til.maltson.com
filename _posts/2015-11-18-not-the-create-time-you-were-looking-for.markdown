---
layout: theme:post
title: "Not the Create Time You Were Looking For"
date: 2015-11-18T18:00:00-05:00
---

For some reason I was always under the impression that the `find -ctime` would
find files by their creation time. Unfortunately, [this is not the case].

> The POSIX standard only defines three distinct timestamps to be stored for
> each file: the time of last data access, the time of last data modification,
> and the time the file status last changed.

As it turns out, according to the man pages, `ctime` is actually.

> File's status was last changed n^24 hours ago. See the comments for -atime to
> understand how rounding affects the interpretation of file status change
> times.

File status changes can include the file itself changing or file attributes
(like permissions) changing. This means for your next find, the best you can do
is the modified time, i.e. `mtime`.

[this is not the case]:http://unix.stackexchange.com/a/91200/77793
