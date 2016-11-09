# $OpenBSD: Makefile,v 1.5 2016/11/09 14:45:56 jca Exp $

COMMENT=		C parser in pure Python

MODPY_EGG_VERSION=	2.17
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
