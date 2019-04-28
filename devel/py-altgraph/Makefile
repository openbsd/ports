# $OpenBSD: Makefile,v 1.17 2019/04/28 20:51:29 sthen Exp $

COMMENT=		Python graph (network) package

MODPY_EGG_VERSION =	0.16.1
DISTNAME=		altgraph-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

# MIT
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
