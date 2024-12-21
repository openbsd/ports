COMMENT=		Foreign Function Interface for Python calling C code

MODPY_DISTV=	1.17.1
DISTNAME=		cffi-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		0

# MIT
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes

WANTLIB=		ffi

MODULES=		lang/python

MODPY_PYBUILD=		setuptools

LIB_DEPENDS=		devel/libffi
RUN_DEPENDS=		devel/py-cparser

# Tests use ffi.callback() requiring write+execute
# see https://cffi.readthedocs.io/en/latest/using.html#callbacks
TEST_DEPENDS=		devel/py-py \
			devel/py-test

.include <bsd.port.mk>
