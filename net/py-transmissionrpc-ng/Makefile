COMMENT =		json-rpc client library for Transmission

MODPY_EGG_VERSION =	0.14.1
DISTNAME =		transmissionrpc-ng-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		4

CATEGORIES =		net

HOMEPAGE =		https://github.com/0x022b/transmissionrpc-ng
MAINTAINER =		Paco Esteban <paco@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	test/*.py

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		net/py-curl${MODPY_FLAVOR}

.include <bsd.port.mk>
