COMMENT =	python client for consul

MODPY_DISTV =	1.6.0

DISTNAME =	py_consul-${MODPY_DISTV}
PKGNAME =	py-consul-${MODPY_DISTV}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/criteo/py-consul

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =	www/py-requests

# requires docker
NO_TEST =	Yes

.include <bsd.port.mk>
