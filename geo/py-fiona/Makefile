# $OpenBSD: Makefile,v 1.5 2018/10/16 18:06:22 danj Exp $

COMMENT =	high-level API and CLI on top of OGR

MODPY_EGG_VERSION =	1.7.13
DISTNAME =	Fiona-${MODPY_EGG_VERSION:S/post/pl/}
PKGNAME =	${MODPY_PY_PREFIX}${DISTNAME:L}

CATEGORIES =	geo

HOMEPAGE =	http://toblerity.org/fiona/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

FLAVORS =		python3
FLAVOR ?=

COMPILER =	base-clang ports-gcc

MODPY_SETUPTOOLS =	Yes
MODPY_PI =	Yes

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
		devel/py-test${MODPY_FLAVOR}

WANTLIB += ${COMPILER_LIBCXX} gdal m ${MODPY_WANTLIB}

post-install:
	mv ${PREFIX}/bin/fio{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
