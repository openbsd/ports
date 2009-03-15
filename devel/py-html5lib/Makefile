# $OpenBSD: Makefile,v 1.2 2009/03/15 12:49:35 espie Exp $

COMMENT=		HTML parser/tokeniser based for HTML5

MODPY_EGG_VERSION=	0.11.1
DISTNAME=		html5lib-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}p0
CATEGORIES=    		devel www textproc
EXTRACT_SUFX=		.zip

HOMEPAGE=		http://code.google.com/p/html5lib/
MASTER_SITES=		http://html5lib.googlecode.com/files/

MAINTAINER=		Damien Miller <djm@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

PKG_ARCH=		*
MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

REGRESS_DEPENDS=	::devel/py-simplejson

.include <bsd.port.mk>
