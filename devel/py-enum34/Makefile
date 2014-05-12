# $OpenBSD: Makefile,v 1.1.1.1 2014/05/12 16:19:21 benoit Exp $

COMMENT =	Python 3.4 Enum backported to previous versions

MODPY_EGG_VERSION = 1.0
DISTNAME =	enum34-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://pypi.python.org/pypi/enum34

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=e/enum34/}

MODULES =	lang/python

do-test:
		cd ${WRKSRC} && ${MODPY_BIN} enum/test_enum.py

.include <bsd.port.mk>
