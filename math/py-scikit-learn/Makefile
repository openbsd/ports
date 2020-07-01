# $OpenBSD: Makefile,v 1.6 2020/07/01 10:07:33 sthen Exp $

COMMENT =	set of python modules for machine learning and data mining

MODPY_EGG_VERSION =	0.20.3
DISTNAME =		scikit-learn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		math

HOMEPAGE =		http://scikit-learn.org

MAINTAINER =		Paul Irofti <paul@irofti.net>

# BSD-3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_TEST_DIR = ${WRKSRC}/lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}
MODPY_SETUPTOOLS = 	Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		math/py-numpy${MODPY_FLAVOR}
RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR} \
			sysutils/py-joblib${MODPY_FLAVOR}
TEST_DEPENDS =		lang/cython${MODPY_FLAVOR}

MAKE_ENV +=		SKLEARN_NO_OPENMP=1

pre-test:
	cp -r ${WRKSRC}/sklearn/datasets/{data,descr} \
		${MODPY_TEST_DIR}/sklearn/datasets

.include <bsd.port.mk>
