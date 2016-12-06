# POV Use Case for Nginx/PHP/Mysql based web application

## Installation

Use code manager to install this module by adding the following entry to your Puppetfile.

```
mod 'profile_rgbank',
  :git => 'https://github.com/velocity303/pov-usecase-rgbank'
```

## Modules Required

There are several modules required for this particular use case to function properly. Please add the following to your Puppetfile.

```
mod 'puppetlabs/stdlib'
mod 'hunner/wordpress'
mod 'jfryman/selinux'
mod 'mayflower/php'
mod 'puppet/nginx'
mod 'puppetlabs/app_modeling'
mod 'puppetlabs/firewall'
mod 'puppetlabs/haproxy'
mod 'puppetlabs/mysql'
mod 'puppetlabs/vcsrepo'
mod 'garethr/docker'
mod 'rgbank',
  :git => 'https://github.com/puppetlabs/puppetlabs-rgbank.git'
```

## Important variables

If looking to override the defaults provided by this profile, please use the following inserted into your hiera configuration.

```
---
profile_rgbank::user:     #string
profile_rgbank::password: #string
profile_rgbank::dbhost:   #string
profile_rgbank::dbname:   #string
```

## Operating systems validated

This has currently been validated against CentOS/RedHat 7.2
