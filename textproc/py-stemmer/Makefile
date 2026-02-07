COMMENT=	snowball stemming algorithms, for information retrieval

MODPY_DISTV=	3.0.0
DISTNAME=	pystemmer-${MODPY_DISTV}
PKGNAME=	py-stemmer-${MODPY_DISTV}

CATEGORIES=	textproc

# MIT/BSD
PERMIT_PACKAGE=	Yes

WANTLIB += stemmer

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MAKE_ENV=	PYSTEMMER_SYSTEM_LIBSTEMMER=1
CFLAGS +=		-I${LOCALBASE}/include

BUILD_DEPENDS=	lang/cython
LIB_DEPENDS=	textproc/libstemmer

.include <bsd.port.mk>
