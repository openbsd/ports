# $OpenBSD: Makefile,v 1.24 2020/07/03 21:12:49 sthen Exp $

COMMENT =	Python 2 and 3 compatibility library
MODPY_EGG_VERSION =	1.13.0
DISTNAME =	six-${MODPY_EGG_VERSION}
PKGNAME =	py-six-${MODPY_EGG_VERSION}
REVISION =	1
CATEGORIES =	devel

HOMEPAGE =	https://github.com/benjaminp/six

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	-v

TEST_DEPENDS =	devel/py-py${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
