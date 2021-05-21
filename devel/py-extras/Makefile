# $OpenBSD: Makefile,v 1.9 2021/05/21 19:50:25 kmos Exp $

COMMENT=		useful extra bits for Python

MODPY_EGG_VERSION=	1.0.0
DISTNAME=		extras-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		2

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

TEST_DEPENDS=		devel/py-testtools${MODPY_FLAVOR}

.include <bsd.port.mk>
