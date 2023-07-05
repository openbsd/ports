COMMENT = C++ header-only serialization library

GH_ACCOUNT =	USCiLab
GH_PROJECT =	cereal
GH_TAGNAME =	v1.3.2

CATEGORIES =	devel

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

MODULES =       devel/cmake

CONFIGURE_ARGS = -DBUILD_DOC=OFF \
			-DBUILD_SANDBOX=OFF \
			-DSKIP_PERFORMANCE_COMPARISON=ON \
			-DBUILD_TESTS=OFF

# just header files
PKG_ARCH =		*

NO_BUILD =		Yes

.include <bsd.port.mk>
