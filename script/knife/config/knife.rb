knife[:aws_access_key_id]     = "#{ENV['AWS_ACCESS_KEY_ID']}"
knife[:aws_secret_access_key] = "#{ENV['AWS_SECRET_ACCESS_KEY']}"
knife[:aws_ssh_key_id]        = 'jenkins'
knife[:chef_mode]             = 'solo'
knife[:flavor]                = 'm1.large'
knife[:identify_file]         = '~/.ssh/id_rsa'
knife[:image]                 = 'ami-7b6a4e3e'
knife[:region]                = 'us-west-1'
knife[:ssh_user]              = 'ec2-user'
