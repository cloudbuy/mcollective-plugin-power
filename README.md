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
    Discovering hosts using the mc method for 2 second(s) .... 2

     * [ ============================================================> ] 11 / 11

    node1.example.net                        Reboot initiated
    node8.example.net                        Reboot initiated


Shutting down machines 

    $ mco power shutdown
    Discovering hosts using the mc method for 2 second(s) .... 2

     * [ ============================================================> ] 11 / 11

    node1.example.net                        Shutdown initiated
    node8.example.net                        Shutdown initiated
