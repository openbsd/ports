COMMENT =		CFD General Notation System standard library

GH_ACCOUNT =		CGNS
GH_PROJECT =		CGNS
GH_TAGNAME =		v4.5.0

SHARED_LIBS +=  	cgns 0.0	# 0.0

CATEGORIES =		math
HOMEPAGE =		https://cgns.github.io/
MAINTAINER =		Johannes Thyssen Tishman <ports@thyssentishman.com>

# Zlib
PERMIT_PACKAGE =	Yes

WANTLIB +=		c hdf5 m z

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake

LIB_DEPENDS =		math/hdf5

CONFIGURE_ARGS =	-DCGNS_ENABLE_TESTS=ON

.include <bsd.port.mk>
