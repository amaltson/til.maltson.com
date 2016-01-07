---
layout: theme:post
title: "Fantastic Gem for CLI Applications"
date: 2016-01-06T22:30:46-05:00
---

If you're going to build a CLI application in Ruby, you owe it to yourself to
look into the [gli] gem. Especially if you're considering building a CLI
application that has subcommands, i.e. Git style. I've done the [research] on
[Ruby Toolbox] and came out with several options.

- Thor - this almost won out, but the help text didn't cut it. Things like
  `--help` at the end of a subcommand don't work either.
- Slop - no support for subcommands in version 4.
- Cocaine - no great help text, not fantastic for subcommands.
- Trollop - Lacking in documentation, less active.
- commander - not as active as I'd like, maintainer tj went to Node, then Go.

The `gli` gem seemed to have it all: subcommands, required args, global options
vs command options, and of course _very_ nice help output.

[gli]: https://github.com/davetron5000/gli
[research]: https://www.ruby-toolbox.com/categories/CLI_Option_Parsers
[Ruby Toolbox]: https://www.ruby-toolbox.com/categories/scripting_frameworks
