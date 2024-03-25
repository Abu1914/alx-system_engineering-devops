# Configuring SSH configuration file connect to a server without a password
# SSH client configuration to use private key ~/.ssh/school
# SSH client configuration to refuse authenticate using password

file { '/etc/ssh/ssh_config' :
	ensure => file,
	path   => '/etc/ssh/ssh_config',
	content => "Host 100.26.155.240\n\t PasswordAuthentication no\n\t IdentityFile ~/.ssh/school",
	mode    => '0644',
}
