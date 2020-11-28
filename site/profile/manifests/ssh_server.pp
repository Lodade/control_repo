class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCXHLCWsDlcigkN4mo0AKfE02iyGeNo9bjckkqxq3LGuQZ8vGRPayLLxwVEEoo8gFBgT4x6M5OjxFLZqqLU9PGX7ct6VvvH5LZFtMlREog2tCQ+G5yLf8rbzOvSOSs51jIvGIFSMSNGDZLcxKZhGJxCsL78gh+ltDk2ArrOeYwNqNl/McBhrvxX/BvKS1p98WFLZgMETPcvIh+B7eHgXTkgzmDd+CiH2/UNvJJFZ10TqyzWBJgOQfzrzbs5C4LHInw6N7mP55K8HBT9CE9hQ4ZkJkAOSIc/V+hXafy5dW4powQ0rl0awN7Lm//EJ0XTxAEH7xcki0F5kMdF1IdfGHtn',
	}  
}
