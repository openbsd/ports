MODPY_DISTV =	1.5.2
COMMENT =	mock out responses from py-requests
DISTNAME =	requests-mock-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	www
REVISION =	8

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

BUILD_DEPENDS =	devel/py-pbr
RUN_DEPENDS =	devel/py-six \
		www/py-requests

#TEST_DEPENDS =	devel/py-testtools

# Requires py-testrepository
NO_TEST =	Yes

.include <bsd.port.mk>
