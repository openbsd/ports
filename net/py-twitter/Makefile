# $OpenBSD: Makefile,v 1.6 2012/04/06 13:29:57 sthen Exp $

COMMENT=		twitter python module

MODPY_EGG_VERSION=	1.7.2
DISTNAME=		twitter-${MODPY_EGG_VERSION}
PKGNAME=		py-twitter-${MODPY_EGG_VERSION}

CATEGORIES=		net www

HOMEPAGE=		http://mike.verdone.ca/twitter/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=t/twitter/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-simplejson \
			net/py-irclib
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
