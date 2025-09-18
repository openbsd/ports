COMMENT=	Foreign Function Interface for Python calling C code

MODPY_DISTV=	2.0.0
DISTNAME=	cffi-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	ffi

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI =	Yes

LIB_DEPENDS=	devel/libffi
RUN_DEPENDS=	devel/py-cparser

# Tests use ffi.callback() requiring write+execute
# see https://cffi.readthedocs.io/en/latest/using.html#callbacks
TEST_DEPENDS=	devel/py-py \
		devel/py-test

.include <bsd.port.mk>
