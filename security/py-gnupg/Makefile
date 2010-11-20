# $OpenBSD: Makefile,v 1.21 2010/11/20 17:22:45 espie Exp $

COMMENT=	Python module for GnuPG interface

VERSION=	0.3.2
DISTNAME=	GnuPGInterface-${VERSION}
PKGNAME=	py-gnupg-${VERSION}

REVISION=	4

CATEGORIES=    	security devel

HOMEPAGE=	http://py-gnupg.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=py-gnupg/}

MODULES=	lang/python

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/gnupg<2

NO_REGRESS=	Yes

.include <bsd.port.mk>
