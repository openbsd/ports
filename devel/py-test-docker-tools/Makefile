COMMENT =		pytest plugin for docker

MODPY_DISTV =		3.1.9
DISTNAME =		pytest_docker_tools-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/pytest_/py-test-/:S/_/-/}

CATEGORIES =		devel

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-docker

.include <bsd.port.mk>
