# $OpenBSD: Makefile,v 1.10 2015/08/31 00:47:20 jca Exp $

COMMENT=		twitter python module

MODPY_EGG_VERSION=	1.17.0
DISTNAME=		twitter-${MODPY_EGG_VERSION}
PKGNAME=		py-twitter-${MODPY_EGG_VERSION}

CATEGORIES=		net www

HOMEPAGE=		http://mike.verdone.ca/twitter/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		net/py-irclib
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
