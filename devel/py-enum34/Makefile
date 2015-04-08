# $OpenBSD: Makefile,v 1.3 2015/04/08 10:54:28 sthen Exp $

COMMENT =	Python 3.4 Enum backported to previous versions

MODPY_EGG_VERSION = 1.0.4
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
