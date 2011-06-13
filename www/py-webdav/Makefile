# $OpenBSD: Makefile,v 1.3 2011/06/13 15:32:14 jasper Exp $

COMMENT=		standards compliant Python WebDAV server and library

MODPY_EGG_VERSION=	0.9.4.1
DISTNAME=		PyWebDAV-${MODPY_EGG_VERSION}
PKGNAME=		py-webdav-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		www

HOMEPAGE=		http://pywebdav.googlecode.com/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}files/

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

NO_REGRESS=		Yes

.include <bsd.port.mk>
