# $OpenBSD: Makefile,v 1.7 2013/03/08 02:04:37 djm Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

PKG_ARCH=		*
MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

REGRESS_DEPENDS=	devel/py-simplejson

.include <bsd.port.mk>
