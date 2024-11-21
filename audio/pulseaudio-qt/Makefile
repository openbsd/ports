COMMENT =	Qt bindings for libpulse

VERSION =	1.6.1
DISTNAME =	pulseaudio-qt-${VERSION}

CATEGORIES =	audio

SHARED_LIBS +=  KF6PulseAudioQt           0.2 # 0.0

SITES =		${SITE_KDE:=stable/pulseaudio-qt/}
EXTRACT_SUFX =	.tar.xz

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# usual KDE rules:
# LGPLv2.1+, GPLv2+, GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui glib-2.0
WANTLIB += intl m pulse pulse-mainloop-glib

MODULES =	x11/kde

LIB_DEPENDS =	devel/gettext,-runtime \
		audio/pulseaudio \
		devel/glib2

CONFIGURE_ARGS =	-DQT_MAJOR_VERSION=6

.include <bsd.port.mk>
