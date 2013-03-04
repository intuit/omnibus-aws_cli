name "aws_cli"
version "0.1.0"

dependencies ["libxslt", "libxml2", "rubygems", "ruby", "python"]

env = { "GEM_HOME" => nil, "GEM_PATH" => nil }

build do
  puts "THIS IS A TEST OF OMNIBUS where gem install would be"
end
