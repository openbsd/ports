# $OpenBSD: Makefile,v 1.2 2015/04/02 14:21:14 jasper Exp $

COMMENT =	Python 3.4 Enum backported to previous versions

MODPY_EGG_VERSION = 1.0
DISTNAME =	enum34-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://pypi.python.org/pypi/enum34

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

do-test:
		cd ${WRKSRC} && ${MODPY_BIN} enum/test_enum.py

.include <bsd.port.mk>
