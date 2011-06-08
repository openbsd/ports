# $OpenBSD: Makefile,v 1.2 2011/06/08 18:00:50 jasper Exp $

COMMENT=		FTP server library for Python

MODPY_EGG_VERSION=	0.5.2
DISTNAME=		pyftpdlib-${MODPY_EGG_VERSION}
PKGNAME=		py-ftpdlib-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		net

HOMEPAGE=		http://pyftpdlib.googlecode.com/

# MIT
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

MODULES=		lang/python

NO_REGRESS=		Yes

.include <bsd.port.mk>
