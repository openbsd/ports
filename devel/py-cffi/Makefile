# XXX: Check _cffi__ hashes of dependent ports if updating.
# e.g. devel/libgit2/py-git2

COMMENT=		Foreign Function Interface for Python calling C code

MODPY_EGG_VERSION=	1.16.0
DISTNAME=		cffi-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		0

# MIT
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes

WANTLIB=		ffi

MODULES=		lang/python
FLAVORS=		python3
FLAVOR=			python3

MODPY_PYBUILD=		setuptools

LIB_DEPENDS=		devel/libffi
RUN_DEPENDS=		devel/py-cparser${MODPY_FLAVOR}

# Tests use ffi.callback() requiring write+execute
# see https://cffi.readthedocs.io/en/latest/using.html#callbacks
TEST_DEPENDS=		devel/py-py${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
