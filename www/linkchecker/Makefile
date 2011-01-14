# $OpenBSD: Makefile,v 1.32 2011/01/14 19:56:01 jasper Exp $

COMMENT=	checks HTML documents for broken links

MODPY_EGG_VERSION=6.2
DISTNAME=	LinkChecker-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L}

CATEGORIES=    	www

HOMEPAGE=	http://linkchecker.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=linkchecker/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python

MODPY_DISTUTILS_INSTALLARGS=	--no-compile
USE_GROFF =	Yes

BUILD_DEPENDS=	net/py-dns

NO_REGRESS=	Yes

.include <bsd.port.mk>
