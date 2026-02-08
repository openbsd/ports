COMMENT =		CFD General Notation System standard library

GH_ACCOUNT =		CGNS
GH_PROJECT =		CGNS
GH_TAGNAME =		v4.5.1

SHARED_LIBS +=  	cgns 1.0	# 0.0

CATEGORIES =		math
HOMEPAGE =		https://cgns.github.io/
MAINTAINER =		Johannes Thyssen Tishman <jtt@openbsd.org>

# Zlib
PERMIT_PACKAGE =	Yes

WANTLIB +=		c hdf5 m sz z

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake

LIB_DEPENDS =		archivers/libaec \
			math/hdf5

CONFIGURE_ARGS =	-DCGNS_ENABLE_TESTS=ON

.include <bsd.port.mk>
