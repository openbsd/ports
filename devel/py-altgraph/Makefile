# $OpenBSD: Makefile,v 1.21 2021/05/21 19:50:23 kmos Exp $

COMMENT=		Python graph (network) package

MODPY_EGG_VERSION =	0.16.1
DISTNAME=		altgraph-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		2

CATEGORIES=		devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_PI=		Yes
MODPY_PYTEST=		Yes

FLAVORS=		python3
FLAVOR?=

.include <bsd.port.mk>
