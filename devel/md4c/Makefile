COMMENT=	markdown parser implementation in C

V=		0.5.2
DIST_TUPLE=	github mity md4c release-${V} .
DISTNAME=	md4c-release-${V}
PKGNAME=	md4c-${V}

SHARED_LIBS +=	md4c-html                 0.0 # 0.0
SHARED_LIBS +=	md4c                      0.0 # 0.0

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += c

MODULES=	devel/cmake

.include <bsd.port.mk>
