COMMENT =	geodesic, gravity and geomagnetic calculations library

V =		2.7
DISTNAME =	GeographicLib-${V}
PKGNAME =	${DISTNAME:L}

CATEGORIES =	geo

SHARED_LIBS +=	GeographicLib             0.0 # 0.0
HOMEPAGE =	https://geographiclib.sourceforge.io/

# MIT
PERMIT_PACKAGE=	Yes

# C++
COMPILER=	base-clang ports-gcc

WANTLIB +=	${COMPILER_LIBCXX} c m

SITES =		${SITE_SOURCEFORGE:=geographiclib/}

MODULES =	devel/cmake

.include <bsd.port.mk>
