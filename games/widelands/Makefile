# $OpenBSD: Makefile,v 1.28 2019/09/09 04:42:10 rsadowski Exp $

COMMENT=	economic and military simulation game

V =		20
DISTNAME = 	widelands-build${V}
PKGNAME=	widelands-0.${V}
CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2
REVISION=	1

HOMEPAGE=	https://wl.widelands.org/
MASTER_SITES =	https://launchpad.net/widelands/build${V}/build${V}/+download/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW SDL2 SDL2_image SDL2_mixer
WANTLIB += SDL2_ttf boost_regex-mt boost_unit_test_framework-mt boost_system-mt
WANTLIB += c execinfo iconv icuuc intl m png z

# c++11
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/gettext,-tools
LIB_DEPENDS =	devel/boost \
		devel/gettext,-runtime \
		devel/libexecinfo \
		devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-ttf \
		graphics/png \
		graphics/glew \
		textproc/icu4c

MODULES =	devel/cmake \
		lang/lua \
		lang/python

MODPY_RUNDEP=	No

CONFIGURE_ARGS =	-DWL_INSTALL_DATADIR=${PREFIX}/share/widelands \
			-DWL_INSTALL_BASEDIR=${PREFIX}/share/widelands \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

CONFIGURE_ENV =	LDFLAGS="${LDFLAGS} -lGL -lexecinfo -lintl -liconv \
			-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_TEST=	Yes

.include <bsd.port.mk>
