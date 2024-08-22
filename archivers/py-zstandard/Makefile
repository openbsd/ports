COMMENT =		Python bindings to the Zstandard compression library

MODPY_EGG_VERSION =	0.22.0
DISTNAME =		zstandard-${MODPY_EGG_VERSION}
PKGNAME =		py-zstandard-${MODPY_EGG_VERSION}
CATEGORIES =		archivers

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
BUILD_DEPENDS =		devel/py-cffi${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

MODPY_PYTEST_ARGS =	tests/
MODPY_TEST_DIR =	${WRKDIR}

pre-test:
	@rm -rf ${WRKDIR}/tests
	@cp -r ${WRKSRC}/tests ${WRKDIR}/

.include <bsd.port.mk>
