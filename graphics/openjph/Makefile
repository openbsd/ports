COMMENT=	implementation of JPEG2000 Part-15

GH_ACCOUNT=	aous72
GH_PROJECT=	OpenJPH
GH_TAGNAME=	0.25.3
PKGNAME=	${DISTNAME:L}

SHARED_LIBS +=	openjph                   0.2 # 0.0

CATEGORIES=	graphics

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD 2-Clause
PERMIT_PACKAGE=	Yes

# uses C++11
COMPILER=	base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} c m tiff

MODULES=	devel/cmake

LIB_DEPENDS=	graphics/tiff

.include <bsd.port.mk>
