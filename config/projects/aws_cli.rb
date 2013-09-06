name            "aws_cli"

install_path    "/opt/aws_cli"
build_version   ENV['version']
build_iteration ENV['iteration']

dependencies    ["preparation", "aws_cli"]

exclude         "\.git*"
