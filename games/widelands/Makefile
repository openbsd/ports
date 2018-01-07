# $OpenBSD: Makefile,v 1.21 2018/01/07 22:05:09 bentley Exp $

COMMENT=	economic and military simulation game

V=		19
DISTNAME= 	widelands-build${V}-src
PKGNAME=	widelands-0.${V}
CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	https://wl.widelands.org/
MASTER_SITES =	https://launchpad.net/widelands/build${V}/build${V}/+download/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW SDL2 SDL2_image SDL2_mixer
WANTLIB += SDL2_net SDL2_ttf boost_regex-mt boost_unit_test_framework-mt
WANTLIB += c execinfo iconv icuuc intl m png z

# c++11
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/gettext-tools
LIB_DEPENDS =	devel/boost \
		devel/gettext \
		devel/libexecinfo \
		devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-net \
		devel/sdl2-ttf \
		graphics/png \
		graphics/glew \
		textproc/icu4c

MODULES =	devel/cmake \
		lang/lua \
		lang/python

MODPY_RUNDEP=	No

CONFIGURE_ARGS =	-DWL_INSTALL_DATADIR=${PREFIX}/share/widelands \
			-DWL_INSTALL_BASEDIR=${PREFIX}/share/widelands

CONFIGURE_ENV =	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include \
			-I${X11BASE}/include" \
		LDFLAGS="${LDFLAGS} -lexecinfo -lintl -liconv \
			-L${LOCALBASE}/lib"

NO_TEST=	Yes

.include <bsd.port.mk>
