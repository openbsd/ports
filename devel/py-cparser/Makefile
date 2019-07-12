# $OpenBSD: Makefile,v 1.10 2019/07/12 20:45:47 sthen Exp $

COMMENT=		C parser in pure Python

MODPY_EGG_VERSION=	2.19
DISTNAME=		pycparser-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/py/py-/}
CATEGORIES=		devel textproc
REVISION=		0

# BSD
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes

MODULES=		lang/python
FLAVORS=		python3
FLAVOR?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} tests/all_tests.py

.include <bsd.port.mk>
