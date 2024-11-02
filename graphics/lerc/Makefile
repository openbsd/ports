COMMENT =	Limited Error Raster Compression

GH_ACCOUNT =	esri
GH_PROJECT =	lerc
GH_TAGNAME =	v4.0.0
CATEGORIES =	graphics

SHARED_LIBS +=	Lerc	0.0 # 0.0

HOMEPAGE =	https://esri.github.io/lerc/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

# C++17 ?
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

WANTLIB +=	${COMPILER_LIBCXX} m

.include <bsd.port.mk>
