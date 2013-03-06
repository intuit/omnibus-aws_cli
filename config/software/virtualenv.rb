name "virtualenv"
version "1.8.4"

dependencies ["python"]

source :url => "https://raw.github.com/pypa/virtualenv/master/virtualenv.py",
       :md5 => "5af0bf28c6f0448075016a487b5d12bb"

relative_path "virtualenv-1.8.4"

build do
  command "#{install_dir}/embedded/bin/python ./virtualenv.py #{install_dir}"
end

