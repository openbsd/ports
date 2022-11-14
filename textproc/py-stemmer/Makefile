COMMENT =		snowball stemming algorithms, for information retrieval

MODPY_EGG_VERSION =	2.0.1
DISTNAME =		PyStemmer-${MODPY_EGG_VERSION}
PKGNAME =		py-stemmer-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		textproc

# MIT/BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR}

.include <bsd.port.mk>
