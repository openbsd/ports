# $OpenBSD: Makefile,v 1.8 2016/04/25 09:09:17 danj Exp $

COMMENT=		pure Python implementation of an SMM manager

MODPY_EGG_VERSION=	0.9.0
DISTNAME=		smmap-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-nosexcover${MODPY_FLAVOR}

.include <bsd.port.mk>
