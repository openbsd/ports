# $OpenBSD: Makefile,v 1.11 2017/01/03 19:19:48 landry Exp $

# XXX: Check _cffi__ hashes of dependent ports if updating.
# e.g. devel/libgit2/py-git2

COMMENT=		Foreign Function Interface for Python calling C code

MODPY_EGG_VERSION=	1.8.3
DISTNAME=		cffi-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		0

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

WANTLIB=		ffi pthread ${MODPY_WANTLIB}

MODULES=		lang/python
FLAVORS=		python3
FLAVOR?=

MODPY_SETUPTOOLS=	Yes

LIB_DEPENDS=		devel/libffi
RUN_DEPENDS=		devel/py-cparser${MODPY_FLAVOR}
TEST_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
