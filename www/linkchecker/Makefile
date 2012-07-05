# $OpenBSD: Makefile,v 1.37 2012/07/05 11:37:51 gonzalo Exp $

COMMENT=	checks HTML documents for broken links

MODPY_EGG_VERSION=7.9
DISTNAME=	LinkChecker-${MODPY_EGG_VERSION}
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

WANTLIB+=	${MODPY_WANTLIB}

RUN_DEPENDS=	devel/desktop-file-utils \
		net/py-dnspython

NO_REGRESS=	Yes

.include <bsd.port.mk>
