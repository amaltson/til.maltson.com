---
layout: theme:post
title: "Capture Standard Output/Standard Error With RSpec"
date: 2016-01-13T21:28:19-05:00
---

In my [previous post] I mentioned an awesome gem for building CLI tools. A CLI
tool's User Interface is through `stdout` and `stderr`, but how do you test that
in RSpec? My initial thought was to capture `stdout/stderr` by setting `$stdout`
and `$stderr` to a `spy` and inspecting the output.

Before I did that, I thought I'd do a quick search to see if the RSpec
developers had already thought of this and provided matchers for this use case.
Sure enough, RSpec includes an [output matcher]. Here's a quick example what it
might look like to use it.

{% highlight ruby %}
describe Cli::App do
  it 'should output to stdout' do
    expect { puts 'Hello, world!' }.to output(/world/).to_stdout
  end

  it 'should output to stderr' do
    expect { warn 'Explosion!' }.to output("Explosion!\n").to_stderr
  end
end
{% endhighlight %}

Once again, with the magic of RSpec, my tests are cleaner and more English like.
Thanks RSpec!

[previous post]: http://til.maltson.com/2016/01/06/fantastic-gem-for-cli-applications.html
[output matcher]: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/output-matcher
