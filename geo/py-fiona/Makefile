# $OpenBSD: Makefile,v 1.14 2019/07/12 20:46:55 sthen Exp $

COMMENT =	high-level API and CLI on top of OGR
BROKEN =	needs update to cope with gdal 3

MODPY_EGG_VERSION =	1.8.6
DISTNAME =	Fiona-${MODPY_EGG_VERSION:S/post/pl/}
PKGNAME =	${MODPY_PY_PREFIX}${DISTNAME:L}
REVISION =	0

CATEGORIES =	geo

HOMEPAGE =	https://fiona.readthedocs.io

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =		python3
FLAVOR ?=

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

post-install:
	mv ${PREFIX}/bin/fio{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
