name "aws_cli"
version "0.9.1"

dependencies ["openssl", "python", "virtualenv"]

source :url => "https://github.com/aws/aws-cli/archive/0.9.1.zip",
       :md5 => "f78fe9ebf3344e3aae4b331211c92bd8"

relative_path "aws-cli-0.9.1"

build do
  command ". #{install_dir}/bin/activate"
  command "pip install --install-option='--prefix=#{install_dir}' awscli"
end
