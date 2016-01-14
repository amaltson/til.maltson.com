require 'rspec'

describe 'Cli::App' do
  it 'should output to stdout and stderr' do
    expect { puts 'Hello, world!'; warn 'Goodbye, world!' }
      .to output("Hello, world!\n").to_stdout
      .and output("Goodbye, world!\n").to_stderr
  end
end
