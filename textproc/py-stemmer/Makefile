COMMENT =		snowball stemming algorithms, for information retrieval

MODPY_EGG_VERSION =	2.2.0.1
DISTNAME =		PyStemmer-${MODPY_EGG_VERSION}
PKGNAME =		py-stemmer-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		textproc

# MIT/BSD
PERMIT_PACKAGE =	Yes

WANTLIB += stemmer

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MAKE_ENV =		PYSTEMMER_SYSTEM_LIBSTEMMER=1
CFLAGS +=		-I${LOCALBASE}/include

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR}
LIB_DEPENDS =		textproc/libstemmer

.include <bsd.port.mk>
