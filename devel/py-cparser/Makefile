# $OpenBSD: Makefile,v 1.2 2015/04/02 14:21:14 jasper Exp $

COMMENT=		C parser in pure Python

MODPY_EGG_VERSION=	2.10
DISTNAME=		pycparser-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/py/py-/}
CATEGORIES=		devel textproc

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} tests/all_tests.py

.include <bsd.port.mk>
