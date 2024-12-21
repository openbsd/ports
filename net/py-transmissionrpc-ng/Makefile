COMMENT =		json-rpc client library for Transmission

MODPY_DISTV =	0.14.1
DISTNAME =		transmissionrpc-ng-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		5

CATEGORIES =		net

HOMEPAGE =		https://github.com/0x022b/transmissionrpc-ng
MAINTAINER =		Paco Esteban <paco@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	test/*.py

RUN_DEPENDS =		net/py-curl

.include <bsd.port.mk>
