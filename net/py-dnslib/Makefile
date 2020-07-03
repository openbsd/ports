# $OpenBSD: Makefile,v 1.6 2020/07/03 21:13:01 sthen Exp $

COMMENT=		library to en/decode DNS wire-format packets for Python

MODPY_EGG_VERSION=	0.9.6
DISTNAME=		dnslib-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		net
MODPY_PI=		Yes
REVISION=		2


MAINTAINER=		Bryan Everly <bryan@bceassociates.com>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

FLAVORS = python3
FLAVOR ?=

do-test:
	${SUBST_CMD} ${WRKSRC}/run_tests.sh
	cd ${WRKSRC} && ./run_tests.sh

.include <bsd.port.mk>
