# $OpenBSD: Makefile,v 1.16 2019/03/20 22:28:30 kn Exp $

COMMENT=		Python graph (network) package

MODPY_EGG_VERSION =	0.16.1
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
