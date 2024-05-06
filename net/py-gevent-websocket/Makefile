COMMENT =	WebSocket handler for the gevent pywsgi server

MODPY_EGG_VERSION =	0.10.1

DISTNAME =	gevent-websocket-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	net

HOMEPAGE =	https://www.gitlab.com/noppo/gevent-websocket/
MAINTAINER =	George Rosamond <george@nycbug.org>

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
FLAVOR =		python3
FLAVORS =		python3

RUN_DEPENDS =		devel/py-gevent${MODPY_FLAVOR}

.include <bsd.port.mk>
