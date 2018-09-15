# $OpenBSD: Makefile,v 1.8 2018/09/15 13:27:29 rsadowski Exp $

COMMENT =	z3 theorem prover

VERSION =	4.7.1
DISTNAME =	z3-${VERSION}
REVISION =	0

GH_ACCOUNT =	Z3Prover
GH_PROJECT =	z3

SHARED_LIBS =	z3			0.0

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

pre-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/mk_util.py

do-build:
	cd ${WRKSRC}/build && make

do-test:
	cd ${WRKSRC}/build && make test

do-install:
	cd ${WRKSRC}/build && make install DESTDIR=""

.include <bsd.port.mk>
