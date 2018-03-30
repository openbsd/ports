# $OpenBSD: Makefile,v 1.1.1.1 2018/03/30 13:53:31 ajacoutot Exp $

COMMENT=		powerful and lightweight Python tree data structure

MODPY_EGG_VERSION=	2.4.3
DISTNAME=		anytree-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes

MODPY_SETUPTOOLS=	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
