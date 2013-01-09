# $OpenBSD: Makefile,v 1.4 2013/01/09 16:09:32 benoit Exp $

COMMENT=		FTP server library for Python

MODPY_EGG_VERSION=	0.7.0
DISTNAME=		pyftpdlib-${MODPY_EGG_VERSION}
PKGNAME=		py-ftpdlib-${MODPY_EGG_VERSION}

CATEGORIES=		net

HOMEPAGE=		http://pyftpdlib.googlecode.com/

# MIT
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

MODULES=		lang/python

MODPY_SETUPTOOLS =	Yes
 
NO_REGRESS=		Yes

.include <bsd.port.mk>
