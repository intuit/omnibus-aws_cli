name "virtualenv"
version "1.8.4"

dependencies ["python"]

source :url => "https://github.com/pypa/virtualenv/archive/1.8.4.zip",
       :md5 => "b12794a53858bd5a76953fd9394735c0"

relative_path "virtualenv-1.8.4"

build do
  command "#{install_dir}/embedded/bin/python ./virtualenv.py #{install_dir}"
end

