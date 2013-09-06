name "aws_cli"
version ENV['version']

dependencies ["openssl", "python", "virtualenv"]

source :url => "https://github.com/aws/aws-cli/archive/#{version}.zip",
       :md5 => "#{ENV['md5_checksum']}"

relative_path "aws-cli-#{version}"

build do
  command "source #{install_dir}/bin/activate; pip install --install-option='--prefix=#{install_dir}' awscli"
end
