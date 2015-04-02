# $OpenBSD: Makefile,v 1.9 2015/04/02 14:21:16 jasper Exp $

COMMENT=		twitter python module

MODPY_EGG_VERSION=	1.7.2
DISTNAME=		twitter-${MODPY_EGG_VERSION}
PKGNAME=		py-twitter-${MODPY_EGG_VERSION}
REVISION =		0

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
