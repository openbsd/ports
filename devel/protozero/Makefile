COMMENT =	minimalist protocol buffer decoder and encoder in C++

GH_ACCOUNT =	mapbox
GH_PROJECT =	protozero
GH_TAGNAME =	v1.7.0
REVISION =	1

CATEGORIES =	devel

# 3-clause BSD
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc ports-clang

CONFIGURE_ARGS	= -DWERROR=NO

MODULES =	devel/cmake
BUILD_DEPENDS =	devel/protobuf

# only tests are built, defer compilation to running tests
NO_BUILD=	Yes

pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
