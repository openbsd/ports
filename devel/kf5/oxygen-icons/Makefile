COMMENT =	KDE Oxygen-style icon theme
VERSION =	6.0.0
DISTNAME =	oxygen-icons-${VERSION}

SITES =		${SITE_KDE:=stable/oxygen-icons/}

WANTLIB- =

RUN_DEPENDS +=	x11/gtk+4,-guic

PKG_ARCH =	*

TEST_DEPENDS =	sysutils/fdupes

MODULES =	x11/qt6

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

.include <bsd.port.mk>
