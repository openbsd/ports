COMMENT=	implementation of JPEG2000 Part-15

GH_ACCOUNT=	aous72
GH_PROJECT=	OpenJPH
GH_TAGNAME=	0.24.2
PKGNAME=	${DISTNAME:L}

SHARED_LIBS +=	openjph                   0.0 # 0.0

CATEGORIES=	graphics

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD 2-Clause
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c m tiff

MODULES=	devel/cmake

LIB_DEPENDS=	graphics/tiff

.include <bsd.port.mk>
