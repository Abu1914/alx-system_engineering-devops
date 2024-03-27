# Define a package resource to ensure Python 3 and pip3 are installed
package { 'python3':
  ensure => 'installed',
}

package { 'python3-pip':
  ensure => 'installed',
}

# Define an exec resource to install Flask using pip3
exec { 'install_flask':
  command => '/usr/bin/pip3 install flask',
  path    => ['/usr/bin', '/usr/local/bin'],
  # Ensure the package is installed only if it's not already installed
  unless  => '/usr/bin/pip3 show flask',
  require => [
    Package['python3'],
    Package['python3-pip'],
  ],
}
