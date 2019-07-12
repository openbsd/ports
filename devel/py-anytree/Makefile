# $OpenBSD: Makefile,v 1.3 2019/07/12 20:45:17 sthen Exp $

COMMENT=		powerful and lightweight Python tree data structure

MODPY_EGG_VERSION=	2.4.3
DISTNAME=		anytree-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

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
