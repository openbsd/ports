# $OpenBSD: Makefile,v 1.4 2015/05/20 09:11:52 sthen Exp $

# XXX: Bump REVISION of the following ports when updating as the _cffi__ hash
# changes: devel/libgit2/py-git2

COMMENT=		Foreign Function Interface for Python calling C code

MODPY_EGG_VERSION=	0.8.6
REVISION=		0
DISTNAME=		cffi-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

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
