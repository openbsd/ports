# $OpenBSD: Makefile,v 1.1.1.1 2014/07/08 14:31:13 jasper Exp $

COMMENT=		Foreign Function Interface for Python calling C code

MODPY_EGG_VERSION=	0.8.2
DISTNAME=		cffi-${MODPY_EGG_VERSION}
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
