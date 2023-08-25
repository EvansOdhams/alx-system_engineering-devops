# 1-install_a_package.pp

# Puppet manifest to install Flask from pip3

# Add your comments here to explain the purpose of this manifest

# Install Flask using pip3
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

# Notify that the package installation is done
notify { 'Flask installed':
  message => 'Flask version 2.1.0 has been installed.',
}
