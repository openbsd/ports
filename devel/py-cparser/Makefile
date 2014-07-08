# $OpenBSD: Makefile,v 1.1.1.1 2014/07/08 14:29:36 jasper Exp $

COMMENT=		C parser in pure Python

MODPY_EGG_VERSION=	2.10
DISTNAME=		pycparser-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/py/py-/}
CATEGORIES=		devel textproc

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=p/pycparser/}

MODULES=		lang/python

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} tests/all_tests.py

.include <bsd.port.mk>
