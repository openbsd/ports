# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:48 espie Exp $

COMMENT=		standards compliant Python WebDAV server and library

MODPY_EGG_VERSION=	0.9.8
DISTNAME=		PyWebDAV-${MODPY_EGG_VERSION}
PKGNAME=		py-webdav-${MODPY_EGG_VERSION}

CATEGORIES=		www

HOMEPAGE=		http://pywebdav.googlecode.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}files/

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

NO_TEST=		Yes

.include <bsd.port.mk>
