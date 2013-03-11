# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:25 espie Exp $

COMMENT=		HTML parser/tokeniser based for HTML5

MODPY_EGG_VERSION=	0.11.1
DISTNAME=		html5lib-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION =		4
CATEGORIES=    		devel www textproc
EXTRACT_SUFX=		.zip

HOMEPAGE=		http://code.google.com/p/html5lib/
MASTER_SITES=		http://html5lib.googlecode.com/files/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

PKG_ARCH=		*
MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=	devel/py-simplejson

.include <bsd.port.mk>
