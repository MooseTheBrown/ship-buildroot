PSMOVEAPI_VERSION = 3.9.0
PSMOVEAPI_SITE = ~/devel/psmoveapi
PSMOVEAPI_SITE_METHOD = local
PSMOVEAPI_INSTALL_STAGING = YES
#PSMOVEAPI_INSTALL_TARGET = NO
#PSMOVEAPI_CONF_OPTS =
PSMOVEAPI_DEPENDENCIES = host-pkgconf bluez5_utils udev

$(eval $(cmake-package))