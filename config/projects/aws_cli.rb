name            "aws_cli"
maintainer      "Intuit, Inc."
homepage        "http://aws.amazon.com/cli/"

install_path    "/opt/aws_cli"
build_version   ENV['version']
build_iteration ENV['iteration']

dependencies    ["preparation", "aws_cli"]

exclude         "\.git*"
