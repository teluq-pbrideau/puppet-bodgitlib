# bodgitlib

Tested with Travis CI

[![Build Status](https://travis-ci.org/bodgit/puppet-bodgitlib.svg?branch=master)](https://travis-ci.org/bodgit/puppet-bodgitlib)
[![Coverage Status](https://coveralls.io/repos/bodgit/puppet-bodgitlib/badge.svg?branch=master&service=github)](https://coveralls.io/github/bodgit/puppet-bodgitlib?branch=master)
[![Puppet Forge](http://img.shields.io/puppetforge/v/bodgit/bodgitlib.svg)](https://forge.puppetlabs.com/bodgit/bodgitlib)
[![Dependency Status](https://gemnasium.com/bodgit/puppet-bodgitlib.svg)](https://gemnasium.com/bodgit/puppet-bodgitlib)

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with bodgitlib](#setup)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
6. [Limitations - OS compatibility, etc.](#limitations)
7. [Development - Guide for contributing to the module](#development)

## Overview

This module is in a similar vein to the stdlib module, a library of resources
for Puppet modules.

## Module Description

This module provides a standard library of resources for the development of
Puppet modules.

## Setup

If you're still using Ruby 1.8.7 then you need to install the Oniguruma gem to
get improved Regexp support. This only needs to be on the Puppetmaster or any
standalone nodes. This could be as simple as `gem install oniguruma` or
installing a package provided by your Operating System.

## Usage

After you've installed bodgitlib, all of its functions are available for module
use or development.

## Reference

### Functions

#### `validate_ldap_dn`

Validate a string or array of strings are valid LDAP distinguished names.

~~~
validate_ldap_dn('dc=example,dc=com')
validate_ldap_dn(['dc=example, dc=com'])
~~~

#### `validate_ldap_filter`

Validate a string or array of strings are valid LDAP search filters.

~~~
validate_ldap_filter('(!(cn=Tim Howes))')
validate_ldap_filter(['(&(objectClass=Person)(|(sn=Jensen)(cn=Babs J*)))'])
~~~

#### `validate_ldap_uri`

Validate a string or array of strings are valid LDAP URI's.

~~~
validate_ldap_uri('ldap://example.com')
validate_ldap_uri(['ldapi://%2fsome%2fpath'])
~~~

## Limitations

This module has been built on and tested against Puppet 3.0 and higher.

The module has been tested on:

* RedHat/CentOS Enterprise Linux 6/7

Testing on other platforms has been light and cannot be guaranteed.

## Development

Please log issues or pull requests at
[github](https://github.com/bodgit/puppet-bodgitlib).
