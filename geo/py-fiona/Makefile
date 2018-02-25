# $OpenBSD: Makefile,v 1.1.1.1 2018/02/25 13:37:29 landry Exp $

COMMENT =	high-level API and CLI on top of OGR

MODPY_EGG_VERSION =	1.7.11.post1
GH_TAGNAME =	${MODPY_EGG_VERSION}
GH_ACCOUNT =	Toblerity
GH_PROJECT =	Fiona
DISTNAME =	py-fiona-${MODPY_EGG_VERSION:S/post/pl/}

CATEGORIES =	geo

HOMEPAGE =	http://toblerity.org/fiona/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS +=${RUN_DEPENDS} \
		math/py-numpy${MODPY_FLAVOR} \
		lang/cython${MODPY_FLAVOR}

LIB_DEPENDS =	geo/gdal

RUN_DEPENDS =	geo/py-cligj${MODPY_FLAVOR} \
		devel/py-click${MODPY_FLAVOR} \
		devel/py-click-plugins${MODPY_FLAVOR} \
		devel/py-munch${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-test

WANTLIB += ${COMPILER_LIBCXX} gdal m ${MODPY_WANTLIB}

post-install:
	mv ${PREFIX}/bin/fio{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
