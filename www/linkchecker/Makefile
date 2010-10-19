# $OpenBSD: Makefile,v 1.30 2010/10/19 08:02:53 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	checks HTML documents for broken links

MODPY_EGG_VERSION=5.1
DISTNAME=	LinkChecker-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L}
REVISION=	0

CATEGORIES=    	www

HOMEPAGE=	http://linkchecker.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=linkchecker/}

MODULES=	lang/python

MODPY_DISTUTILS_INSTALLARGS=	--no-compile
USE_GROFF =	Yes

BUILD_DEPENDS=	:py-dns-*:net/py-dns

NO_REGRESS=	Yes

.include <bsd.port.mk>
