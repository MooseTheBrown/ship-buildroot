PSMOVEINPUT_VERSION = 0.4.5
PSMOVEINPUT_SITE = https://github.com/MooseTheBrown/psmoveinput
PSMOVEINPUT_SITE_METHOD = git
PSMOVEINPUT_INSTALL_STAGING = YES
#PSMOVEINPUT_INSTALL_TARGET = NO
#PSMOVEINPUT_CONF_OPTS =
PSMOVEINPUT_DEPENDENCIES = psmoveapi boost

$(eval $(cmake-package))
