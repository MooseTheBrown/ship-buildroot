MEDIAMTX_RPICAMERA_SITE = https://github.com/bluenviron/mediamtx-rpicamera
MEDIAMTX_RPICAMERA_VERSION = v2.3.6
MEDIAMTX_RPICAMERA_SITE_METHOD = git
MEDIAMTX_RPICAMERA_DEPENDENCIES = \
	python-jinja2 \
	python-pyyaml \
	python-ply \
	libcamera

MEDIAMTX_RPICAMERA_CONF_OPTS = \
	--wrap-mode=default

MEDIAMTX_RPICAMERA_INSTALL_STAGINS = YES
MEDIAMTX_RPICAMERA_INSTALL_TARGET = YES

$(eval $(meson-package))
