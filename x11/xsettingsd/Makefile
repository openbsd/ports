COMMENT=	lightweight XSETTINGS daemon

DIST_TUPLE=	codeberg derat xsettingsd v1.0.4 .
WRKDIST=	${WRKDIR}/xsettingsd

CATEGORIES=	x11

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xfixes c m ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc

MODULES=	devel/cmake
BUILD_DEPENDS=	devel/gtest

.include <bsd.port.mk>
