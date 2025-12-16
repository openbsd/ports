COMMENT =		server-side session support for Flask

# XXX: superset (not yet imported) needs < 1
MODPY_DISTV =		0.8.0
DISTNAME =		flask_session-${MODPY_DISTV}
PKGNAME =		py-flask-session-${MODPY_DISTV}

CATEGORIES =		www

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		flit_core

RUN_DEPENDS =		devel/py-cachelib \
			devel/py-msgspec \
			www/py-flask

TEST_DEPENDS =		devel/py-test-cov

.include <bsd.port.mk>
