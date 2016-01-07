# $OpenBSD: Makefile,v 1.4 2016/01/07 21:35:27 jasper Exp $

COMMENT=		C parser in pure Python

MODPY_EGG_VERSION=	2.10
REVISION=		1
DISTNAME=		pycparser-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/py/py-/}
CATEGORIES=		devel textproc

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python
FLAVORS=		python3
FLAVOR?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} tests/all_tests.py

.include <bsd.port.mk>
