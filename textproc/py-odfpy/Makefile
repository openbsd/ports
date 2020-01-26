# $OpenBSD: Makefile,v 1.1.1.1 2020/01/26 16:58:57 ajacoutot Exp $

COMMENT=		Python API and tools to manipulate OpenDocument files

MODPY_EGG_VERSION=	1.4.1
DISTNAME=		odfpy-${MODPY_EGG_VERSION}
PKGNAME=		py-odfpy-${MODPY_EGG_VERSION}

CATEGORIES=		textproc devel

HOMEPAGE=		https://github.com/eea/odfpy

# Apache, GPL, LGPL
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=		textproc/py-defusedxml${MODPY_FLAVOR}

.include <bsd.port.mk>
