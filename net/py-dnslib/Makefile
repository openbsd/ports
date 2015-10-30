# $OpenBSD: Makefile,v 1.1.1.1 2015/10/30 16:44:54 rpointel Exp $

COMMENT=		library to en/decode DNS wire-format packets for Python

MODPY_EGG_VERSION=	0.9.6
DISTNAME=		dnslib-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		net
MODPY_PI=		Yes

HOMEPAGE=		https://pypi.python.org/pypi/dnslib

MAINTAINER=		Bryan Everly <bryan@bceassociates.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

FLAVORS = python3
FLAVOR ?=

do-test:
	${SUBST_CMD} ${WRKSRC}/run_tests.sh
	cd ${WRKSRC} && ./run_tests.sh

.include <bsd.port.mk>
