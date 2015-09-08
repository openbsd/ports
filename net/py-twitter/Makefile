# $OpenBSD: Makefile,v 1.12 2015/09/08 11:40:43 jca Exp $

COMMENT=		twitter python module

MODPY_EGG_VERSION=	1.17.1
DISTNAME=		twitter-${MODPY_EGG_VERSION}
PKGNAME=		py-twitter-${MODPY_EGG_VERSION}

CATEGORIES=		net www

HOMEPAGE=		http://mike.verdone.ca/twitter/
MAINTAINER=		Daniel Winters <daniel@tydirium.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		net/py-irclib
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=		devel/py-nose

.include <bsd.port.mk>
