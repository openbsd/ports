# $OpenBSD: Makefile,v 1.6 2019/04/28 20:51:32 sthen Exp $

COMMENT=		useful extra bits for Python

MODPY_EGG_VERSION=	1.0.0
DISTNAME=		extras-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		0

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

TEST_DEPENDS=		devel/py-testtools${MODPY_FLAVOR}

.include <bsd.port.mk>
