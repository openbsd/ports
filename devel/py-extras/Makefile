# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:44 sthen Exp $

COMMENT=		useful extra bits for Python

MODPY_EGG_VERSION=	1.0.0
DISTNAME=		extras-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		1

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

TEST_DEPENDS=		devel/py-testtools${MODPY_FLAVOR}

.include <bsd.port.mk>
