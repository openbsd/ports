# $OpenBSD: Makefile,v 1.15 2018/02/17 09:36:36 jasper Exp $

COMMENT=		Python graph (network) package

MODPY_EGG_VERSION =	0.15
DISTNAME=		altgraph-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

# MIT
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
