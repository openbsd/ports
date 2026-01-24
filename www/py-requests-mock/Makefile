COMMENT =	mock out responses from py-requests
MODPY_DISTV =	1.12.1
DISTNAME =	requests-mock-${MODPY_DISTV}
PKGNAME =	py-requests-mock-${MODPY_DISTV}
CATEGORIES =	www

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools_scm

RUN_DEPENDS =	www/py-requests

TEST_DEPENDS =	devel/py-fixtures \
		devel/py-testtools \
		textproc/py-sphinx \
		www/py-requests-futures
# Requires https://pypi.org/project/purl/
NO_TEST =	Yes

.include <bsd.port.mk>
