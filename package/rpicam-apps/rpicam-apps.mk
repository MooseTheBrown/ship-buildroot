RPICAM_APPS_SITE = https://github.com/raspberrypi/rpicam-apps
RPICAM_APPS_VERSION = v1.5.0
RPICAM_APPS_SITE_METHOD = git
RPICAM_APPS_DEPENDENCIES = \
	host-pkgconf \
	boost \
	libdrm \
	libexif
RPICAM_APPS_CONF_OPTS = \
	-Denable_libav=disabled \
	-Denable_drm=enabled \
	-Denable_egl=disabled \
	-Denable_qt=disabled \
	-Denable_opencv=disabled \
	-Denable_tflite=disabled
RPICAM_APPS_INSTALL_STAGING = YES
RPICAM_APPS_LICENSE = BSD-2-Clause
RPICAM_APPS_LICENSE_FILES = license.txt

$(eval $(meson-package))
