# $OpenBSD: Makefile,v 1.15 2006/06/03 09:45:27 alek Exp $

COMMENT=	"Python module for GnuPG interface"

VERSION=	0.3.2
DISTNAME=	GnuPGInterface-${VERSION}
PKGNAME=	py-gnupg-${VERSION}p0
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
RUN_DEPENDS=	:gnupg-*:security/gnupg

NO_REGRESS=	Yes

.include <bsd.port.mk>
