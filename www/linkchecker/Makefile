# $OpenBSD: Makefile,v 1.28 2009/12/03 18:57:45 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	checks HTML documents for broken links

MODPY_EGG_VERSION=5.1
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

MODULES=	lang/python

MODPY_DISTUTILS_INSTALLARGS=	--no-compile

BUILD_DEPENDS=	:py-dns-*:net/py-dns

NO_REGRESS=	Yes

.include <bsd.port.mk>
