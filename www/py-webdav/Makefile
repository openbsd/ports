# $OpenBSD: Makefile,v 1.5 2012/11/12 13:31:47 gsoares Exp $

COMMENT=		standards compliant Python WebDAV server and library

MODPY_EGG_VERSION=	0.9.8
DISTNAME=		PyWebDAV-${MODPY_EGG_VERSION}
PKGNAME=		py-webdav-${MODPY_EGG_VERSION}

CATEGORIES=		www

HOMEPAGE=		http://pywebdav.googlecode.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}files/

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

NO_REGRESS=		Yes

.include <bsd.port.mk>
