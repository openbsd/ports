COMMENT=	open framework for storing and sharing scene data

GH_ACCOUNT=	alembic
GH_PROJECT=	alembic
GH_TAGNAME=	1.8.5

SHARED_LIBS +=  Alembic                   1.0 # 1.8

CATEGORIES=	graphics

HOMEPAGE=	https://www.alembic.io/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Imath-3_1 c m

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

LIB_DEPENDS=	math/imath

.include <bsd.port.mk>
