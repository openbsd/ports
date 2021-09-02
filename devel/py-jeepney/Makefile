# $OpenBSD: Makefile,v 1.1.1.1 2021/09/02 08:06:06 ajacoutot Exp $

COMMENT=		low-level, pure Python DBus protocol wrapper

MODPY_EGG_VERSION=	0.7.1
DISTNAME=		jeepney-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

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
