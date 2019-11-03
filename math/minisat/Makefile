# $OpenBSD: Makefile,v 1.16 2019/11/03 14:07:44 jasper Exp $

COMMENT=		minimalistic Boolean satisfiability solver

DISTNAME=		minisat-2.2.0.20170810
GH_ACCOUNT=		niklasso
GH_PROJECT=		minisat
GH_COMMIT=		37dc6c67e2af26379d88ce349eb9c4c6160e8543
REVISION=		1

SHARED_LIBS +=		minisat                   0.0 # 2.1

CATEGORIES=		math

HOMEPAGE=		http://minisat.se/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=		c m ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/cmake

NO_TEST=		Yes

.include <bsd.port.mk>
