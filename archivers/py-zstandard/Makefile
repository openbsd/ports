COMMENT=	Python bindings to the Zstandard compression library

MODPY_DISTV=	0.24.0
REVISION=	1

DISTNAME=	zstandard-${MODPY_DISTV}
PKGNAME=	py-zstandard-${MODPY_DISTV}
CATEGORIES=	archivers

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/py-cffi \
		sysutils/py-packaging

CFLAGS += -DZDICT_QSORT=ZDICT_QSORT_C90

MODPY_TEST_LINK_SO= Yes

.include <bsd.port.mk>
