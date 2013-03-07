name "aws_cli"
version "0.7.0"

dependencies ["openssl", "python", "virtualenv"]

source :url => "https://github.com/aws/aws-cli/archive/develop.zip",
       :md5 => "81311b63be43b02b6c131102356bbf6c"

relative_path "aws-cli-develop"

build do
  command ". #{install_dir}/bin/activate; pip install --install-option='--prefix=#{install_dir}' awscli"
end
