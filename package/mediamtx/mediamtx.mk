MEDIAMTX_SITE = https://github.com/bluenviron/mediamtx
MEDIAMTX_VERSION = v1.11.0
MEDIAMTX_SITE_METHOD = git

MEDIAMTX_INSTALL_STAGING = YES
MEDIAMTX_INSTALL_TARGET = YES

define MEDIAMTX_SETUP
	cd $(BUILD_DIR)/mediamtx-v1.11.0 && $(HOST_DIR)/bin/go generate ./...
endef

MEDIAMTX_PRE_CONFIGURE_HOOKS += MEDIAMTX_SETUP

$(eval $(golang-package))
