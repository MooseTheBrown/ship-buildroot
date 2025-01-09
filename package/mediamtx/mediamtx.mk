MEDIAMTX_SITE = https://github.com/bluenviron/mediamtx
MEDIAMTX_VERSION = v1.11.0
MEDIAMTX_SITE_METHOD = git
MEDIAMTX_DEPENDENCIES = mediamtx-rpicamera

MEDIAMTX_INSTALL_STAGING = YES
MEDIAMTX_INSTALL_TARGET = YES

define MEDIAMTX_SETUP
	go generate ./...
	cp -f $(TARGET_DIR)/usr/bin/mtxrpicam $(MEDIAMTX_SRC_DIR)/internal/staticsources/rpicamera/
endef

MEDIAMTX_PRE_CONFIGURE_HOOKS += MEDIAMTX_SETUP

$(eval $(golang-package))
