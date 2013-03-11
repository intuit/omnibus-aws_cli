name "aws_cli"
version "0.7.0"

dependencies ["openssl", "python", "virtualenv"]

source :url => "https://github.com/aws/aws-cli/archive/0.8.1.zip",
       :md5 => "3d9b381b9536b3a2f86171b258071bf0"

relative_path "aws-cli-develop"

build do
  command ". #{install_dir}/bin/activate; pip install --install-option='--prefix=#{install_dir}' awscli"
end
