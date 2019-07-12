# $OpenBSD: Makefile,v 1.9 2019/07/12 20:51:03 sthen Exp $

COMMENT=		standards compliant Python WebDAV server and library

MODPY_EGG_VERSION=	0.9.8
DISTNAME=		PyWebDAV-${MODPY_EGG_VERSION}
PKGNAME=		py-webdav-${MODPY_EGG_VERSION}
REVISION=		1

CATEGORIES=		www

HOMEPAGE=		https://pywebdav.googlecode.com/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}files/

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

NO_TEST=		Yes

.include <bsd.port.mk>
