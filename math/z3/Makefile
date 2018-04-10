# $OpenBSD: Makefile,v 1.5 2018/04/10 08:17:38 rpointel Exp $

COMMENT =	z3 theorem prover

VERSION =	4.6.0
DISTNAME =	z3-${VERSION}

GH_ACCOUNT =	Z3Prover
GH_PROJECT =	z3

CATEGORIES =	math

WANTLIB +=	c m pthread ${COMPILER_LIBCXX}

# MIT
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	simple

CONFIGURE_ARGS +=	--prefix=${PREFIX} \
			--python

MODULES =	lang/python

WRKDIST =	${WRKDIR}/z3-${DISTNAME}

do-build:
	cd ${WRKSRC}/build && make

do-test:
	cd ${WRKSRC}/build && make test

do-install:
	cd ${WRKSRC}/build && make install DESTDIR=""

.include <bsd.port.mk>
