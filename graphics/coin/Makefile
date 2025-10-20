COMMENT =		3D graphics library based on the Open Inventor API

V = 			4.0.6
DISTNAME =		coin-${V}-src
PKGNAME =		${DISTNAME:S/-src$//}

SITES =			https://github.com/coin3d/coin/releases/download/v${V}/

SHARED_LIBS +=  	Coin	0.1 # 0.0

CATEGORIES =		graphics
HOMEPAGE =		https://www.coin3d.org/
MAINTAINER =		Johannes Thyssen Tishman <jtt@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE SM X11 Xext m

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake

BUILD_DEPENDS =		devel/boost

CONFIGURE_ARGS =	-DCOIN_BUILD_TESTS=OFF

SUBST_VARS +=		V

WRKDIST =		${WRKDIR}/coin

NO_TEST =		yes

.include <bsd.port.mk>
