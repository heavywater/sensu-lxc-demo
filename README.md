## Sensu demo using LXC

*This is at a very alpha stage currently*

This repo contains a fully functioning
[sensu](http://github.com/sensu/sensu) demo. This demo uses a
combination of tools:

  * [vagrant](http://vagrantup.com)
  * [librarian-chef](https://github.com/applicationsonline/librarian-chef)
  * [chef](https://github.com/opscode/chef)
  * [vagabond](https://github.com/chrisroberts/vagabond)

Essentially vagrant will bootstrap a working vagabond environment and
vagabond will bring up a cluster of LXC containers to test the sensu
monitoring framework. This is meant to be a vagabond playground for
those using vagrant as well as something practical, sensu, to play with.

## Usage

First off:

`bundle install && bundle exec librarian-chef install`

You will also need the latest version of vagrant and the
vagrant-librarian-chef plugin. It can be installed with:

`vagrant plugin install vagrant-librarian-chef`

Next `vagrant up`

Followed by `vagrant ssh`

`cd /vagrant` and run `vagabond` to get a list of commands

We could automate this, but part of our goal is to also introduce you
to vagabond. We think you'll like it.

Experiment with the various vagabond commands and report back what
breaks, [github issues](https://github.com/heavywater/sensu-lxc-demo/issues) are great.

Note that lxc commands are run under the hood, so vagabond uses sudo to do it's thing.

From here it's containers all the way down.

Have fun.

### A note about Vagrant
The base box used in the Vagrantfile is Ubuntu 12.10 + Chef 11.4,
built using the excellent [bento](http://github.com/opscode/bento)
definitions. It's publicly hosted on s3 by Heavy Water, feel free to
use it or substitute your own.

 * [HW Ubuntu 12.10](http://vagrant.hw-ops.com/quantal64.box)

### A note about roles
Roles are only used by the lxc containers, not the vagrant provision
step. Everything needed for vagrant provision is handled by
librarian-chef and the Vagrantfile

### A note about sensu_lxc
The sensu_lxc cookbook shipped in this repo was only written to assist minimal
bootstrapping for this demo, it has no other purpose and thus is not
distributed elsewhere.
