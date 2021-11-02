# $OpenBSD: Makefile,v 1.2 2021/11/02 00:00:50 sthen Exp $

COMMENT=		low-level, pure Python DBus protocol wrapper

MODPY_EGG_VERSION=	0.7.1
DISTNAME=		jeepney-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://gitlab.com/takluyver/jeepney

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
#MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR=			python3

.include <bsd.port.mk>
