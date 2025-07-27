COMMENT =	GUI configuration tool for Picom X composite manager

VERSION =	0.17.0
DIST_TUPLE +=	github qtilities picom-conf ${VERSION} .
PKGNAME =	picom-config-${VERSION}

CATEGORIES =	x11

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Widgets
WANTLIB += c config m

MODULES =	devel/cmake \
		x11/qt6

BUILD_DEPENDS =	devel/qtilitools

LIB_DEPENDS =	devel/libconfig

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_ARGS =	-DQT_VERSION_MAJOR=6 \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

.include <bsd.port.mk>
