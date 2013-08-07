# $OpenBSD: Makefile,v 1.9 2013/08/07 21:31:42 naddy Exp $

COMMENT=		HTML parser/tokeniser based for HTML5

MODPY_EGG_VERSION=	0.11.1
DISTNAME=		html5lib-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION =		5
CATEGORIES=    		devel www textproc
EXTRACT_SUFX=		.zip

HOMEPAGE=		https://code.google.com/p/html5lib/
MASTER_SITES=		https://html5lib.googlecode.com/files/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

PKG_ARCH=		*
MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=	devel/py-simplejson

.include <bsd.port.mk>
