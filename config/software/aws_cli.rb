name "aws_cli"
version ENV['version']

dependencies ["openssl", "python", "virtualenv"]

# Install awscli via pip and the equivalent rev of botocore since the projects
# are released on the same cadence and awscli has a broken dependency
# specification on botocore.
build do
  command ". #{install_dir}/bin/activate; pip install --install-option='--prefix=#{install_dir}' awscli==#{version} botocore==#{version}"
end
