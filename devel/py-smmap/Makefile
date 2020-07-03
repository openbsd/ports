# $OpenBSD: Makefile,v 1.12 2020/07/03 21:12:50 sthen Exp $

COMMENT=		pure Python implementation of an SMM manager

MODPY_EGG_VERSION=	2.0.3
DISTNAME=		smmap2-${MODPY_EGG_VERSION}
PKGNAME=		py-smmap-${MODPY_EGG_VERSION}
CATEGORIES=		devel
REVISION=		1

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-nosexcover${MODPY_FLAVOR}

.include <bsd.port.mk>
