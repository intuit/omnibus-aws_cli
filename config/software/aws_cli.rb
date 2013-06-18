name "aws_cli"
version "0.9.1"

dependencies ["openssl", "python", "virtualenv"]

relative_path "aws-cli-#{version}"

build do
  command ". #{install_dir}/bin/activate; pip install --install-option='--prefix=#{install_dir}' awscli==#{version}"
end
