name "aws_cli"
version "0.8.1"

dependencies ["openssl", "python", "virtualenv"]

source :url => "https://github.com/aws/aws-cli/archive/0.8.1.zip",
       :md5 => "471010a0ed739cc0d361797d7f773b8c"

relative_path "aws-cli-0.8.1"

build do
  command ". #{install_dir}/bin/activate; pip install --install-option='--prefix=#{install_dir}' awscli"
end
