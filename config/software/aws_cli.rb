name "aws_cli"
version "0.7.0"

dependencies ["rubygems", "ruby", "python", "virtualenv"]

source :url => "https://github.com/aws/aws-cli/archive/develop.zip",
       :md5 => "0b9d9973636f67b77b036844ca9db544"

build do
  command ". #{install_dir}/bin/activate; pip install --install-option='--prefix=#{install_dir}' awscli"
end
