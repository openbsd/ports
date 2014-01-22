# $OpenBSD: Makefile,v 1.8 2014/01/22 00:25:09 fgsch Exp $

COMMENT=		twitter python module

MODPY_EGG_VERSION=	1.7.2
DISTNAME=		twitter-${MODPY_EGG_VERSION}
PKGNAME=		py-twitter-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES=		net www

HOMEPAGE=		http://mike.verdone.ca/twitter/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=t/twitter/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		net/py-irclib
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
