# $OpenBSD: Makefile,v 1.4 2019/11/23 20:28:31 kmos Exp $

COMMENT =		Python client for Arista eAPI

MODPY_EGG_VERSION =	0.8.2
DISTNAME =		pyeapi-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/py//}
REVISION =		0

CATEGORIES =		net

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	test/unit

RUN_DEPENDS =		net/py-netaddr${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
