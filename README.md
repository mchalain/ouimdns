ouimdns
=======

# Introduction
ouimdns is a ouistiti webserver plugin.
The source comes frome the deprecated mod\_tinysvcmdns module available inside the webserver.

The goal of this plugin is to deliver a mDNS service on the local network.
It is loaded if the hostname of the webserver terminated with ".local".

```config
servers = ({
	hostname = "ouistiti.local";
...
```

# build and installation

```bash
$ make
$ sudo make pkglibdir=/usr/local/lib/ouistiti install
```

