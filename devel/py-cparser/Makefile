# $OpenBSD: Makefile,v 1.3 2015/05/20 09:04:36 sthen Exp $

COMMENT=		C parser in pure Python

MODPY_EGG_VERSION=	2.10
REVISION=		0
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
