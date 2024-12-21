COMMENT=	Python bindings for LMDB

MODPY_DISTV=	1.5.1

DISTNAME=	lmdb-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	databases

HOMEPAGE=	http://github.com/jnwatson/py-lmdb/

# OpenLDAP (BSD-like)
PERMIT_PACKAGE=	Yes

WANTLIB += lmdb

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# otherwise the cpython extension is not found, and py-lmdb falls back
# to a cffi-based implementation
MODPY_TEST_LINK_SO= Yes

LIB_DEPENDS=	databases/lmdb
MAKE_ENV=	LMDB_INCLUDEDIR=${LOCALBASE}/include \
		LMDB_LIBDIR=${LOCALBASE}/lib \
		LMDB_FORCE_SYSTEM=1

.include <bsd.port.mk>
