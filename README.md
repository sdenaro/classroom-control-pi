Steve Hawkins test

# `classroom-control-pi`

This is the classroom control repository for the Puppetizing Infrastructure class.

## Usage

Small site modules should be developed in the `site` directory. This is appended
to the `$modulepath` by the `environment.conf` file so that Puppet can use modules
from this directory.

Adding modules to the `Puppetfile` will manage them in the standard `modules`
directory using r10k.
