COMMENT =		library for the docker engine API

MODPY_DISTV =		7.1.0
DISTNAME =		docker-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs

RUN_DEPENDS =		www/py-requests

TEST_DEPENDS =		devel/py-coverage \
			devel/py-test-cov \
			devel/py-test-timeout

.include <bsd.port.mk>
