################################################################################
#
# OUIMDNS
#
################################################################################

OUIMDNS_VERSION = HEAD
OUIMDNS_SITE = $(call github,ouistiti-project,ouimdns,$(OUIMDNS_VERSION))
OUIMDNS_SITE_METHOD = git
OUIMDNS_LICENSE = MIT
OUIMDNS_LICENSE_FILES = LICENSE

OUIMDNS_DEPENDENCIES += ouistiti
OUIMDNS_CONFIG_OPTS += --datadir=/srv/www-ouimdns
OUIMDNS_CONFIG_OPTS += --sysconfdir=/etc/ouistiti
OUIMDNS_CONFIG_OPTS += --prefix=/usr
OUIMDNS_CONFIG_OPTS += --pkglibdir=/usr/lib/ouistiti

$(eval $(autotools-package))

