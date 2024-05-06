COMMENT =	file transport adapter for requests

MODPY_EGG_VERSION =	1.5.1

DISTNAME =	requests-file-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	www

HOMEPAGE =	https://github.com/dashea/requests-file/

MAINTAINER =	George Rosamond <george@nycbug.org>

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVOR =		python3
FLAVORS =		python3

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
