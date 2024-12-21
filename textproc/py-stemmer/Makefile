COMMENT =		snowball stemming algorithms, for information retrieval

MODPY_DISTV =	2.2.0.1
DISTNAME =		PyStemmer-${MODPY_DISTV}
PKGNAME =		py-stemmer-${MODPY_DISTV}
REVISION =		2

CATEGORIES =		textproc

# MIT/BSD
PERMIT_PACKAGE =	Yes

WANTLIB += stemmer

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MAKE_ENV =		PYSTEMMER_SYSTEM_LIBSTEMMER=1
CFLAGS +=		-I${LOCALBASE}/include

BUILD_DEPENDS =		lang/cython
LIB_DEPENDS =		textproc/libstemmer

.include <bsd.port.mk>
