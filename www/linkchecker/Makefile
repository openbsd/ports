# $OpenBSD: Makefile,v 1.38 2013/01/26 14:43:08 jasper Exp $

COMMENT=	checks HTML documents for broken links

MODPY_EGG_VERSION=8.3
DISTNAME=	LinkChecker-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L}

CATEGORIES=    	www

HOMEPAGE=	http://wummel.github.com/linkchecker/

MAINTAINER=	Amit Kulkarni <amitkulz@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	https://github.com/downloads/wummel/linkchecker/ \
		http://distfiles.nl/

EXTRACT_SUFX=	.tar.xz

MODULES=	lang/python

WANTLIB+=	${MODPY_WANTLIB} pthread

RUN_DEPENDS=	devel/desktop-file-utils \
		net/py-dnspython

NO_REGRESS=	Yes

.include <bsd.port.mk>
