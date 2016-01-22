---
layout: theme:post
title: "Chaining RSpec Matchers"
date: 2016-01-14T22:05:19-05:00
published: true
---

I'm on a bit of an RSpec TIL bonanza, primary because I'm taking the time to dig
into the RSpec documentation and see what it has to offer.

One of my favourite assertion libraries from the Java world, that a coworker
turned me onto a couple of years ago, is [AssertJ]. One of the nicest features in
AssertJ was the ability to easily chain assertions off one expectation.

{% highlight java %}
assertThat(fellowshipOfTheRing).hasSize(9)
                               .contains(frodo, sam)
                               .doesNotContain(sauron);
{% endhighlight %}

While writing the aforementioned CLI tool, I wanted to test that it output to
both `stdout` and `stderr`. I started to wonder if there's a way to do this Java
"builder" chaining in RSpec. I shouldn't be surprised anymore, but *of course*
the RSpec developers have already thought of this. In the RSpec world they're
called [Compound Matchers] and they look something like this:

{% highlight ruby %}
require 'rspec'

describe Cli::App do
  it 'should output to stdout and stderr' do
    expect { puts 'Hello, world!'; warn 'Goodbye, world!' }
      .to output("Hello, world!\n").to_stdout
      .and output("Goodbye, world!\n").to_stderr
  end
end
{% endhighlight %}

Now I can have the fluid chained assertions in RSpec that I've come to expect
from AssertJ 🎊✨

[AssertJ]: http://joel-costigliola.github.io/assertj/
[Compound Matchers]: https://relishapp.com/rspec/rspec-expectations/docs/compound-expectations
