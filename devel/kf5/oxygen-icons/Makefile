COMMENT =	KDE Oxygen-style icon theme
VERSION =	6.1.0
DISTNAME =	oxygen-icons-${VERSION}
REVISION =	0

SITES =		${SITE_KDE:=stable/oxygen-icons/}

WANTLIB- =

RUN_DEPENDS +=	x11/gtk+4,-guic

PKG_ARCH =	*

TEST_DEPENDS =	sysutils/fdupes

MODULES =	x11/qt6

MODQT6_DEPS =	No
MODQT5_DEPS =	No
BUILD_DEPENDS +=	${MODQT6_BUILD_DEPENDS}

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

.include <bsd.port.mk>
