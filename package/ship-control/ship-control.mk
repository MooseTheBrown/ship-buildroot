SHIP_CONTROL_VERSION = 4e8318e9207b9a6301718448db3bc8c6076cf702
SHIP_CONTROL_SITE = https://github.com/MooseTheBrown/ship-control
SHIP_CONTROL_SITE_METHOD = git
SHIP_CONTROL_INSTALL_STAGING = YES
#SHIP_CONTROL_INSTALL_TARGET = NO
#SHIP_CONTROL_CONF_OPTS = -DBUILD_TESTS=ON
#SHIP_CONTROL_DEPENDENCIES =

$(eval $(cmake-package))
