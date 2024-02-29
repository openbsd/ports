COMMENT=	lightweight XSETTINGS daemon

DIST_TUPLE=	codeberg derat xsettingsd v1.0.2 .
WRKDIST=	${WRKDIR}/xsettingsd
REVISION=	0

CATEGORIES=	x11

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += X11 c m ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc base-gcc

MODULES=	devel/cmake
BUILD_DEPENDS=	devel/gtest

.include <bsd.port.mk>
