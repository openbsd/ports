# $OpenBSD: Makefile,v 1.6 2017/01/03 19:19:48 landry Exp $

COMMENT=		C parser in pure Python

MODPY_EGG_VERSION=	2.17
DISTNAME=		pycparser-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/py/py-/}
CATEGORIES=		devel textproc
REVISION=		0

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python
FLAVORS=		python3
FLAVOR?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} tests/all_tests.py

.include <bsd.port.mk>
