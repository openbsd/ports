# $OpenBSD: Makefile,v 1.3 2020/07/03 21:13:10 sthen Exp $

COMMENT =	python client for consul

MODPY_EGG_VERSION =	1.1.0

DISTNAME =	python-consul-${MODPY_EGG_VERSION}
PKGNAME =	py-consul-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	sysutils

HOMEPAGE =	https://python-consul.readthedocs.io

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
FLAVOR =	python3
FLAVORS =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =	www/py-requests${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR}

# requires pytest-twisted
NO_TEST =	Yes

.include <bsd.port.mk>
