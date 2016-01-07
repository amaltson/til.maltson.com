---
layout: theme:post
title: "Fantastic Gem for CLI Applications"
date: 2016-01-06T22:30:46-05:00
---

If you're going to build a CLI application in Ruby, you owe it to yourself to
look into the [gli] gem. Especially if you're considering building a CLI
application that has subcommands, i.e. Git style. I've done the [research] on
[Ruby Toolbox] and came out with several options.

- [Thor] - this almost won out, but the help text didn't cut it. Things like
  `--help` at the end of a subcommand don't work either.
- [Slop] - no support for subcommands in version 4.
- [Cocaine] - no great help text, not fantastic for subcommands.
- [Trollop] - Lacking in documentation, less active.
- [commander] - not as active as I'd like, maintainer **tj** went to Node, then
  Go. It also seemed too heavy weight for my needs, and again the helper text
  wasn't as nice. This is still a nice option.

The `gli` gem seemed to have it all: subcommands, required args, global options
vs command options, and of course _very_ nice help output.

[gli]: https://github.com/davetron5000/gli
[research]: https://www.ruby-toolbox.com/categories/CLI_Option_Parsers
[Ruby Toolbox]: https://www.ruby-toolbox.com/categories/scripting_frameworks
[Thor]: https://github.com/erikhuda/thor
[Slop]: https://github.com/leejarvis/slop
[Cocaine]: https://github.com/thoughtbot/cocaine
[Trollop]: https://github.com/ManageIQ/trollop
[commander]: https://github.com/commander-rb/commander
