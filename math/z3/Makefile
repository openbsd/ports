# $OpenBSD: Makefile,v 1.2 2017/04/10 11:46:23 sthen Exp $

COMMENT =	z3 theorem prover

VERSION =	4.5.0
DISTNAME =	z3-${VERSION}

GH_ACCOUNT =	Z3Prover
GH_PROJECT =	z3

CATEGORIES =	math

WANTLIB +=	c m pthread ${LIBCXX}

# MIT
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	simple

CONFIGURE_ARGS +=	--prefix=${PREFIX} \
			--python

MODULES =	lang/python

WRKDIST =	${WRKDIR}/z3-${DISTNAME}

NO_TEST =	Yes

do-build:
	cd ${WRKSRC}/build && make

do-install:
	cd ${WRKSRC}/build && make install DESTDIR=""

.include <bsd.port.mk>
