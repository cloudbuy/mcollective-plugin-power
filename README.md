mcollective-plugin-power
========================

Mcollective Power function plugin 

this plugin provider functions for rebooting and shutting down servers with mcollective

Installation
------------

* Follow the [basic plugin install guide](http://projects.puppetlabs.com/projects/mcollective-plugins/wiki/InstalingPlugins)

Usage
-----

Rebooting machines 

    $ mco power reboot
    Do you really want to perform network tests unfiltered? (y/n): y

     * [ ============================================================> ] 11 / 11

    node1.example.net                        Reboot initiated
    node8.example.net                        Reboot initiated


Shutting down machines 

    $ mco power shutdown
    Do you really want to perform network tests unfiltered? (y/n): y

     * [ ============================================================> ] 11 / 11

    node1.example.net                        Shutdown initiated
    node8.example.net                        Shutdown initiated
