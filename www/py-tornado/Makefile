COMMENT =		scalable, non-blocking web server

MODPY_EGG_VERSION =	6.2
DISTNAME =		tornado-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		www

HOMEPAGE =		https://www.tornadoweb.org/

# Apache v2
PERMIT_PACKAGE =	Yes

WANTLIB +=		pthread ${MODPY_WANTLIB}

MODULES =		lang/python

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tornado/test

TEST_DEPENDS =		devel/py-twisted${MODPY_FLAVOR} \
			net/py-cares${MODPY_FLAVOR} \
			net/py-curl${MODPY_FLAVOR}

pre-test:
	${MODPY_CMD} build_ext --inplace

.include <bsd.port.mk>
