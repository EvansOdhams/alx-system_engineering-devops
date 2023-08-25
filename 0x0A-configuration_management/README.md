# 0x0A Configuration Management

This project contains Puppet code to manage the configuration of a Ubuntu 20.04 system.

## Manifests

- `webserver.pp`: Installs and configures Apache and PHP packages. Sets up an index.html page.

- `firewall.pp`: Configures UFW firewall to allow standard HTTP/HTTPS ports.

- `loadbalancer.pp`: Installs and sets up an Nginx load balancer proxy passing to the webservers.

## Setup

- Install Puppet 5.5 and puppet-lint on an Ubuntu 20.04 VM

- Clone this repository to your VM

- Run `puppet-lint` on all `.pp` files to validate syntax

- Apply the manifests:
  ```
  puppet apply webserver.pp
  puppet apply firewall.pp 
  puppet apply loadbalancer.pp
  ```

- Verify the changes are made successfully 

- The load balancer should be accessible on port 80 and proxy requests to the Apache webservers

## Author
Evance Odhiambo
