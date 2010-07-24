# OpenBSD makefile for:	newsfetch
# Version required:	1.0
# Date created:		28 April 1998
# Whom:			Ejovi Nuwere <ejovi@ejovi.net>
#
# $OpenBSD: Makefile,v 1.21 2010/07/24 17:43:17 ajacoutot Exp $
#

COMMENT=	download news articles from NNTP server

DISTNAME=	newsfetch-1.21
CATEGORIES=	news
MASTER_SITES=	${MASTER_SITE_SUNSITE:=system/news/readers/}

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c 

MAKE_ENV+=	INSTALL_PROGRAM="${INSTALL_PROGRAM}" INSTALL_MAN="${INSTALL_MAN}"

NO_REGRESS=	Yes

.include <bsd.port.mk>
