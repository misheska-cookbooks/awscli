# awscli
[![wercker status](https://app.wercker.com/status/0f739dc47f0a455eb93b1a33adb82e6b/m "wercker status")](https://app.wercker.com/project/bykey/0f739dc47f0a455eb93b1a33adb82e6b)

This cookbook installs the AWS Command Line Interface tools.
NOTE: Currently only the Mac OS X platform is supported.

# Overview

Install the Chef Development Kit, available via http://downloads.getchef.com

On Mac OS X and Linux, configure the PATH and GEM environment variables with:

    $ eval "$(chef shell-init bash)"

All cookbook-related development activities are Rake tasks:

Attributes
==========

The attributes used in this cookbook are in the the `node['awscli']`
namespace:

Attribute            | Description | Type | Default
---------------------|-------------|------|--------
bundle_installer_url | Download URL for the bundle installer | String | https://s3.amazonaws.com/aws-cli/awscli-bundle.zip

Recipes
=======

Here's the recipes for this cookbook and how to use them in your environment:

default
-------
Installs the AWS Command Line Interface tools.

Alternative Install Methods
==========================

## Bootstrapping with chef-solo

In situations where this cookbook is being used in an environment where there
is no Chef Server, this cookbook can be installed via `chef-solo` using the
following command:

    $ rake bootstrap
