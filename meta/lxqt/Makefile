COMMENT-main =		desktop meta-package for LXQt (base installation)
COMMENT-extras =	desktop meta-package for LXQt (full installation)

V =		1.0.0
PKGNAME =	lxqt-${V}

PKGNAME-main =		lxqt-${V}
PKGNAME-extras =	lxqt-extras-${V}

MAINTAINER =		Elias M. Mariani <marianielias@gmail.com>

MULTI_PACKAGES =	-main -extras

# minimal
RUN_DEPENDS-main += \
		x11/lxqt/about \
		x11/lxqt/config \
		x11/lxqt/globalkeys \
		x11/lxqt/notificationd \
		x11/lxqt/panel \
		x11/lxqt/pcmanfm-qt \
		x11/lxqt/session \
		x11/lxqt/policykit \
		x11/lxqt/powermanagement \
		x11/lxqt/qtermwidget \
		x11/lxqt/qterminal \
		x11/lxqt/qtplugin \
		x11/lxqt/obconf-qt \
		x11/lxqt/themes


RUN_DEPENDS-extras += \
		STEM-=${V}:${BASE_PKGPATH},-main \
		x11/lxqt/lximage-qt \
		x11/lxqt/openssh-askpass \
		x11/lxqt/pavucontrol-qt \
		x11/lxqt/runner \
		x11/lxqt/screengrab \
		x11/lxqt/sudo

.include <bsd.port.mk>
