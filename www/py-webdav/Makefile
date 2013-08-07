# $OpenBSD: Makefile,v 1.7 2013/08/07 21:32:54 naddy Exp $

COMMENT=		standards compliant Python WebDAV server and library

MODPY_EGG_VERSION=	0.9.8
DISTNAME=		PyWebDAV-${MODPY_EGG_VERSION}
PKGNAME=		py-webdav-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		www

HOMEPAGE=		https://pywebdav.googlecode.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}files/

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

NO_TEST=		Yes

.include <bsd.port.mk>
