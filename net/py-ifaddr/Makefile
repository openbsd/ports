# $OpenBSD: Makefile,v 1.6 2021/03/05 12:56:06 ajacoutot Exp $

COMMENT=		enumerate IP addresses on the local network adapters

MODPY_EGG_VERSION=	0.1.7
DISTNAME=		ifaddr-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		net

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes
MODPY_PYTEST_ARGS =	ifaddr

FLAVORS=		python3
FLAVOR=			python3

.include <bsd.port.mk>
