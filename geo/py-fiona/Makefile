# $OpenBSD: Makefile,v 1.19 2020/03/23 09:42:25 landry Exp $

COMMENT =	high-level API and CLI on top of OGR

MODPY_EGG_VERSION =	1.8.13
DISTNAME =	Fiona-${MODPY_EGG_VERSION:S/post/pl/}
PKGNAME =	${MODPY_PY_PREFIX}${DISTNAME:L}

CATEGORIES =	geo

HOMEPAGE =	https://fiona.readthedocs.io

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =		python3
FLAVOR =		python3

COMPILER =	base-clang ports-gcc

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests

BUILD_DEPENDS +=${RUN_DEPENDS} \
		math/py-numpy${MODPY_FLAVOR} \
		lang/cython${MODPY_FLAVOR}

LIB_DEPENDS =	geo/gdal

RUN_DEPENDS =	geo/py-cligj${MODPY_FLAVOR} \
		devel/py-click${MODPY_FLAVOR} \
		devel/py-click-plugins${MODPY_FLAVOR} \
		devel/py-munch${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-nose${MODPY_FLAVOR} \
		net/py-boto3${MODPY_FLAVOR}

WANTLIB += ${COMPILER_LIBCXX} gdal m ${MODPY_WANTLIB}

TESTLIBDIR =	${WRKSRC}/lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}

pre-test:
	cp ${TESTLIBDIR}/fiona/*.so ${WRKSRC}/fiona/

.include <bsd.port.mk>
