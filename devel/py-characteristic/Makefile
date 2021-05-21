# $OpenBSD: Makefile,v 1.4 2021/05/21 19:50:24 kmos Exp $

COMMENT =		python attributes without boilerplate

MODPY_EGG_VERSION =	14.3.0
DISTNAME =		characteristic-${MODPY_EGG_VERSION}
PKGNAME =		py-characteristic-${MODPY_EGG_VERSION}
REVISION =		2

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
