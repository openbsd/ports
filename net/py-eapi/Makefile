# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:01 sthen Exp $

COMMENT =		Python client for Arista eAPI

MODPY_EGG_VERSION =	0.8.3
DISTNAME =		pyeapi-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/py//}
REVISION =		1

CATEGORIES =		net

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
