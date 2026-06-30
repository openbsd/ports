COMMENT =	KDE Oxygen-style icon theme
VERSION =	6.2.0
DISTNAME =	oxygen-icons-${VERSION}
REVISION =	1

SITES =		${SITE_KDE:=stable/oxygen-icons/}
EXTRACT_SUFX =	.tar.xz
DIST_SUBDIR =	kde

CATEGORIES =	x11

# LGPLv2.1+, GPLv2+
PERMIT_PACKAGE =	Yes

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

WANTLIB- =

RUN_DEPENDS +=	x11/gtk+4,-guic

PKG_ARCH =	*

TEST_DEPENDS =	sysutils/fdupes

MODULES =	devel/kf6 \
		lang/python \

MODPY_RUNDEP =	No
MODQT6_DEPS =	No
BUILD_DEPENDS =	${MODQT6_BUILD_DEPENDS}

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON
CONFIGURE_ARGS +=	-DKF_IGNORE_PLATFORM_CHECK=ON

.include <bsd.port.mk>
