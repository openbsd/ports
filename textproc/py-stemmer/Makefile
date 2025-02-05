COMMENT =		snowball stemming algorithms, for information retrieval

MODPY_DISTV =		2.2.0.1
DISTNAME =		PyStemmer-${MODPY_DISTV}
PKGNAME =		py-stemmer-${MODPY_DISTV}
REVISION =		3

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

# avoid loop:
# devel/cmake -> textproc/py-sphinx -> textproc/py-snowballstemmer -> textproc/py-stemmer -> lang/pythran -> math/py-numpy -> math/lapack -> devel/cmake
MODPY_CYTHON_PYTHRAN_RDEP = No

.include <bsd.port.mk>
