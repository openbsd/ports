COMMENT =		high performance, concurrent HTTP client library

MODPY_DISTV =	1.5.3
DISTNAME =		geventhttpclient-${MODPY_DISTV}
PKGNAME =		${MODPY_PY_PREFIX}${DISTNAME}
CATEGORIES =		net devel
REVISION =		3

HOMEPAGE =		https://github.com/gwik/geventhttpclient

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	src/geventhttpclient/

RUN_DEPENDS +=		devel/py-gevent \
			devel/py-certifi \
			devel/py-six
TEST_DEPENDS =		net/py-dpkt

.include <bsd.port.mk>
