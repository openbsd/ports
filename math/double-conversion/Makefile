COMMENT=	binary-decimal and decimal-binary routines for IEEE doubles

CATEGORIES=	math

GH_ACCOUNT=	google
GH_PROJECT=	double-conversion
GH_TAGNAME=	v3.2.1

SHARED_LIBS +=  double-conversion         1.0 # 0.0

# BSD3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DBUILD_TESTING=ON

.include <bsd.port.mk>
