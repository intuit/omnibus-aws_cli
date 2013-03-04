name "python"
version "3.3.0"

source :url => "http://www.python.org/ftp/python/3.3.0/Python-3.3.0.tgz",
       :md5 => "198a64f7a04d1d5e95ce2782d5fd8254"

relative_path "python-3.3.0"

env = {
  "LDFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  "CFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  "LD_RUN_PATH" => "#{install_dir}/embedded/lib"
}

build do
  command(["./configure",
           "--prefix=#{install_dir}/embedded",
          :env => env)

  command "make -j #{max_build_jobs}", :env => {"LD_RUN_PATH" => "#{install_dir}/embedded/lib"}
  command "make install"
end
