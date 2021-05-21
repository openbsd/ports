# $OpenBSD: Makefile,v 1.5 2021/05/21 19:50:23 kmos Exp $

COMMENT=		powerful and lightweight Python tree data structure

MODPY_EGG_VERSION=	2.4.3
DISTNAME=		anytree-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		2

CATEGORIES=		devel

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes

MODPY_SETUPTOOLS=	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
