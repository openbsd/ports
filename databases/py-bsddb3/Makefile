BROKEN=		doesn't work with Python 3.10 or newer

COMMENT=	Python bindings for Oracle Berkeley DB

MODPY_DISTV=	6.0.1
DISTNAME=	bsddb3-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	11

CATEGORIES=	databases devel

HOMEPAGE=	https://www.jcea.es/programacion/pybsddb.htm

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += db pthread ${MODPY_WANTLIB}

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MAKE_ENV=	BERKELEYDB_INCDIR=${LOCALBASE}/include/db4

SUBST_VARS=	MODPY_LIB_SUFFIX

LIB_DEPENDS=	databases/db/v4

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test.py

.include <bsd.port.mk>
