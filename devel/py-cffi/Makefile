# $OpenBSD: Makefile,v 1.2 2014/07/08 15:28:35 jasper Exp $

# XXX: Bump REVISION of the following ports when updating as the _cffi__ hash
# changes: devel/libgit/py-git2

COMMENT=		Foreign Function Interface for Python calling C code

MODPY_EGG_VERSION=	0.8.6
DISTNAME=		cffi-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=c/cffi/}

WANTLIB=		ffi pthread ${MODPY_WANTLIB}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

LIB_DEPENDS=		devel/libffi
RUN_DEPENDS=		devel/py-cparser

.include <bsd.port.mk>
