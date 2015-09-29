# $OpenBSD: Makefile,v 1.6 2015/09/29 10:52:35 sthen Exp $

COMMENT =	parse CSS3 Selectors and translates them to XPath 1.0

MODPY_EGG_VERSION = 0.9.1
REVISION =	1
DISTNAME =	cssselect-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	textproc

HOMEPAGE =	https://pypi.python.org/pypi/cssselect

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

TEST_DEPENDS =	textproc/py-lxml${MODPY_FLAVOR}

MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
