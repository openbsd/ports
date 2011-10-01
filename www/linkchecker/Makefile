# $OpenBSD: Makefile,v 1.36 2011/10/01 20:14:46 kili Exp $

COMMENT=	checks HTML documents for broken links

MODPY_EGG_VERSION=7.1
DISTNAME=	LinkChecker-${MODPY_EGG_VERSION}
REVISION=	1
PKGNAME=	${DISTNAME:L}

CATEGORIES=    	www

HOMEPAGE=	http://linkchecker.sourceforge.net/

MAINTAINER=	Amit Kulkarni <amitkulz@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=linkchecker/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python

MODPY_DISTUTILS_INSTALLARGS=	--no-compile

WANTLIB+=	${MODPY_WANTLIB}

RUN_DEPENDS=	net/py-dnspython

NO_REGRESS=	Yes

.include <bsd.port.mk>
