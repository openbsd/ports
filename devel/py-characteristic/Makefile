# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:42 sthen Exp $

COMMENT =		python attributes without boilerplate

MODPY_EGG_VERSION =	14.3.0
DISTNAME =		characteristic-${MODPY_EGG_VERSION}
PKGNAME =		py-characteristic-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://characteristic.readthedocs.org/

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	lib/

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-test-xdist${MODPY_FLAVOR}


.include <bsd.port.mk>
