# $OpenBSD: Makefile,v 1.20 2021/01/04 14:06:29 sthen Exp $

# XXX: Check _cffi__ hashes of dependent ports if updating.
# e.g. devel/libgit2/py-git2

COMMENT=		Foreign Function Interface for Python calling C code

MODPY_EGG_VERSION=	1.13.2
DISTNAME=		cffi-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		1

# MIT
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes

WANTLIB=		ffi pthread ${MODPY_WANTLIB}

MODULES=		lang/python
FLAVORS=		python3
FLAVOR?=

MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

LIB_DEPENDS=		devel/libffi
RUN_DEPENDS=		devel/py-cparser${MODPY_FLAVOR}

# Tests use ffi.callback() requiring write+execute
# see https://cffi.readthedocs.io/en/latest/using.html#callbacks
TEST_DEPENDS=		devel/py-py${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

TESTLIBDIR=	${WRKSRC}/lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}/cffi/

TEST_ENV=	PYTHONPATH=${WRKSRC}/${TESTLIBDIR}

.include <bsd.port.mk>
