# $OpenBSD: Makefile,v 1.22 2021/11/02 00:00:25 sthen Exp $

COMMENT=		Python graph (network) package

MODPY_EGG_VERSION =	0.16.1
DISTNAME=		altgraph-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		3

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
