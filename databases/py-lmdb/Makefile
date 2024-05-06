COMMENT=	Python bindings for LMDB

MODPY_EGG_VERSION=	1.4.1

DISTNAME=	lmdb-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	databases

HOMEPAGE=	http://github.com/jnwatson/py-lmdb/

# OpenLDAP (BSD-like)
PERMIT_PACKAGE=	Yes

WANTLIB += lmdb

MODULES=	lang/python
FLAVOR=		python3
FLAVORS=	python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# otherwise the cpython extension is not found, and py-lmdb falls back
# to a cffi-based implementation
MODPY_TEST_DIR=	${WRKSRC}/build
MODPY_PYTEST_ARGS= ..

LIB_DEPENDS=	databases/lmdb
MAKE_ENV=	LMDB_INCLUDEDIR=${LOCALBASE}/include \
		LMDB_LIBDIR=${LOCALBASE}/lib \
		LMDB_FORCE_SYSTEM=1

.include <bsd.port.mk>
