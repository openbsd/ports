# $OpenBSD: Makefile,v 1.10 2018/12/15 12:43:40 rpointel Exp $

COMMENT =	Z3 theorem prover

VERSION =	4.8.3
DISTNAME =	z3-${VERSION}

GH_ACCOUNT =	Z3Prover
GH_PROJECT =	z3

SHARED_LIBS =	z3			1.0

CATEGORIES =	math

WANTLIB +=	c m pthread ${COMPILER_LIBCXX}

# MIT
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	simple

CONFIGURE_ARGS +=	--prefix=${PREFIX} \
			--python

# c++11
COMPILER =	base-clang ports-gcc

MODULES =	lang/python

WRKDIST =	${WRKDIR}/z3-${DISTNAME}
WRKCONF =	${WRKSRC}
WRKBUILD =	${WRKSRC}/build

pre-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/mk_util.py

.include <bsd.port.mk>
