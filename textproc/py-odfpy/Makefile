# $OpenBSD: Makefile,v 1.5 2021/11/02 00:02:38 sthen Exp $

COMMENT=		Python API and tools to manipulate OpenDocument files

MODPY_EGG_VERSION=	1.4.1
DISTNAME=		odfpy-${MODPY_EGG_VERSION}
PKGNAME=		py-odfpy-${MODPY_EGG_VERSION}
REVISION=		1

CATEGORIES=		textproc devel

HOMEPAGE=		https://github.com/eea/odfpy

# Apache, GPL, LGPL
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

RUN_DEPENDS=		textproc/py-defusedxml${MODPY_FLAVOR}

.include <bsd.port.mk>
