COMMENT =		constructive solid geometry rendering library

DISTNAME =		OpenCSG-1.8.2
PKGNAME =		${DISTNAME:L}

SHARED_LIBS =		opencsg		2.0

CATEGORIES =		graphics

HOMEPAGE =		http://www.opencsg.org/

# GPLv2 with CGAL exception
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

SITES =			http://www.opencsg.org/

MODULES =		devel/cmake

CONFIGURE_ARGS +=       -DBUILD_EXAMPLE=OFF

.include <bsd.port.mk>
