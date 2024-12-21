COMMENT =	Python library for building WebSocket servers and clients

MODPY_DISTV =	13.1

DISTNAME =		websockets-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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

.include <bsd.port.mk>
