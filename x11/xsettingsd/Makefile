COMMENT=	lightweight XSETTINGS daemon

GH_ACCOUNT=	derat
GH_PROJECT=	xsettingsd
GH_TAGNAME=	v1.0.2

CATEGORIES=	x11

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += X11 c m ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc base-gcc

MODULES=	devel/cmake
BUILD_DEPENDS=	devel/gtest

.include <bsd.port.mk>
