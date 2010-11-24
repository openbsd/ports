# $OpenBSD: Makefile,v 1.1.1.1 2010/11/24 08:25:57 jasper Exp $

COMMENT=		twitter python module

MODPY_EGG_VERSION=	1.4.2
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

RUN_DEPENDS=		devel/py-dateutil
BUILD_DEPENDS=		${RUN_DEPENDS}

NO_REGRESS=		Yes

.include <bsd.port.mk>
