# bodgitlib

[![Build Status](https://travis-ci.org/bodgit/puppet-bodgitlib.svg?branch=master)](https://travis-ci.org/bodgit/puppet-bodgitlib)
[![Codecov](https://img.shields.io/codecov/c/github/bodgit/puppet-bodgitlib)](https://codecov.io/gh/bodgit/puppet-bodgitlib)
[![Puppet Forge version](http://img.shields.io/puppetforge/v/bodgit/bodgitlib)](https://forge.puppetlabs.com/bodgit/bodgitlib)
[![Puppet Forge downloads](https://img.shields.io/puppetforge/dt/bodgit/bodgitlib)](https://forge.puppetlabs.com/bodgit/bodgitlib)
[![Puppet Forge - PDK version](https://img.shields.io/puppetforge/pdk-version/bodgit/bodgitlib)](https://forge.puppetlabs.com/bodgit/bodgitlib)

#### Table of Contents

1. [Description](#description)
2. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
3. [Limitations - OS compatibility, etc.](#limitations)
4. [Development - Guide for contributing to the module](#development)

## Description

This module provides a standard library of resources for the development of
Puppet modules.

## Reference

The reference documentation is generated with
[puppet-strings](https://github.com/puppetlabs/puppet-strings) and the latest
version of the documentation is hosted at
[https://bodgit.github.io/puppet-bodgitlib/](https://bodgit.github.io/puppet-bodgitlib/)
and available also in the [REFERENCE.md](https://github.com/bodgit/puppet-bodgitlib/blob/master/REFERENCE.md).

## Limitations

This module has been built on and tested against Puppet 5 and higher.

The module should work anywhere as everything is written in the Puppet
language.

## Development

The module relies on [PDK](https://puppet.com/docs/pdk/1.x/pdk.html) and has
[rspec-puppet](http://rspec-puppet.com) tests. Run them with:

```
$ bundle exec rake spec
```

Please log issues or pull requests at
[github](https://github.com/bodgit/puppet-bodgitlib).
