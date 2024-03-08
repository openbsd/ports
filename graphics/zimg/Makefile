COMMENT =	scaling, colorspace conversion, and dithering library
CATEGORIES =	graphics

SHARED_LIBS +=	zimg                      0.1 # 2.0

GH_ACCOUNT =	sekrit-twc
GH_PROJECT =	zimg
GH_TAGNAME =	release-3.0.5

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# WTFPL
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

# C++14
COMPILER =	base-clang ports-gcc

CONFIGURE_STYLE =	autoreconf

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

FAKE_FLAGS =	exampledir="${PREFIX}/share/examples/zimg"

.include <bsd.port.mk>
