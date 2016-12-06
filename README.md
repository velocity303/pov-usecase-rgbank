# POV Use Case for Nginx/PHP/Mysql based web application

## Installation

Use code manager to install this module by adding the following entry to your Puppetfile.

```
mod 'profile_rgbank',
  :git => 'https://github.com/velocity303/pov-usecase-rgbank.git'
```

## Modules Required

There are several modules required for this particular use case to function properly. Please add the following to your Puppetfile.

```
mod 'puppetlabs/stdlib', '4.13.1'
mod 'hunner/wordpress', '1.0.0'
mod 'jfryman/selinux', '0.4.0'
mod 'mayflower/php', '4.0.0-beta1'
mod 'puppet/nginx', '0.5.0'
mod 'puppetlabs/app_modeling', '0.2.0'
mod 'puppetlabs/firewall', '1.8.1'
mod 'puppetlabs/haproxy', '1.5.0'
mod 'puppetlabs/mysql', '3.10.0'
mod 'puppetlabs/vcsrepo', '1.4.0'
mod 'garethr/docker', '5.3.0'
mod 'rgbank',
  :git => 'https://github.com/puppetlabs/puppetlabs-rgbank.git'
  :ref => '1b545bc639d727e388da4af1217cc632ecaacc10'
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
