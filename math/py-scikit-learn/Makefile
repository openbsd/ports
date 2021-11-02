# $OpenBSD: Makefile,v 1.11 2021/11/02 00:01:36 sthen Exp $

COMMENT =	set of python modules for machine learning and data mining

MODPY_EGG_VERSION =	0.23.2
REVISION =		1
DISTNAME =		scikit-learn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		math

HOMEPAGE =		http://scikit-learn.org

MAINTAINER =		Paul Irofti <paul@irofti.net>

# BSD-3
PERMIT_PACKAGE =	Yes

# C++11
COMPILER =		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} m

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_TEST_DIR = ${WRKSRC}/lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}
MODPY_SETUPTOOLS = 	Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR}
RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR} \
			sysutils/py-joblib${MODPY_FLAVOR} \
			sysutils/py-threadpoolctl${MODPY_FLAVOR}
TEST_DEPENDS =		math/py-pandas${MODPY_FLAVOR}

pre-test:
	cp -r ${WRKSRC}/sklearn/datasets/{data,descr} \
		${MODPY_TEST_DIR}/sklearn/datasets

.include <bsd.port.mk>
