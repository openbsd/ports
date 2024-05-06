COMMENT =	high-level API and CLI on top of OGR

MODPY_EGG_VERSION =	1.9.4.post1
DISTNAME =	Fiona-${MODPY_EGG_VERSION}
PKGNAME =	${MODPY_PY_PREFIX}${DISTNAME:L:S/.post/pl/}
REVISION =	0

CATEGORIES =	geo

HOMEPAGE =	https://fiona.readthedocs.io

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

COMPILER =	base-clang ports-gcc

MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes
MODPY_PYTEST_ARGS =	tests

BUILD_DEPENDS +=${RUN_DEPENDS} \
		math/py-oldest-supported-numpy${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR} \
		lang/cython${MODPY_FLAVOR}

LIB_DEPENDS =	geo/gdal

RUN_DEPENDS =	geo/py-cligj${MODPY_FLAVOR} \
		devel/py-click${MODPY_FLAVOR} \
		devel/py-click-plugins${MODPY_FLAVOR} \
		devel/py-munch${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-nose${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		net/py-boto3${MODPY_FLAVOR}

WANTLIB += ${COMPILER_LIBCXX} gdal m

pre-test:
	cp ${WRKSRC}/build/lib*/fiona/*.so ${WRKSRC}/fiona/

.include <bsd.port.mk>
