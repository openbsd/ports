COMMENT =	Python library for building WebSocket servers and clients

MODPY_EGG_VERSION =	13.1

DISTNAME =		websockets-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

HOMEPAGE =		https://websockets.readthedocs.io/en/stable/

MAINTAINER =		George Rosamond <george@nycbug.org>

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB +=		pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# some test-related files are missing from the sdist on pypi; they are
# present in github and mostly work
NO_TEST =		Yes

FLAVOR =		python3
FLAVORS =		python3

.include <bsd.port.mk>
