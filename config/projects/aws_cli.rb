name            "aws_cli"
maintainer      "Intuit, Inc."
homepage        "http://www.intuit.com"

replaces        "aws_cli"
install_path    "/opt/aws_cli"
build_version   Omnibus::BuildVersion.new.semver
#build_version   "0.9.1"
build_iteration "1"

dependencies    ["preparation", "aws_cli", "version-manifest"]

exclude         "\.git*"
exclude         "bundler\/git"
