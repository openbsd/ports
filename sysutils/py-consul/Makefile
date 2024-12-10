COMMENT =	python client for consul

MODPY_EGG_VERSION =	1.5.3

DISTNAME =	py_consul-${MODPY_EGG_VERSION}
PKGNAME =	py-consul-${MODPY_EGG_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/criteo/py-consul

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
FLAVOR =	python3
FLAVORS =	python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =	www/py-requests${MODPY_FLAVOR}

# requires docker
NO_TEST =	Yes

.include <bsd.port.mk>
