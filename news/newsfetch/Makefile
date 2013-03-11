# OpenBSD makefile for:	newsfetch
# Version required:	1.0
# Date created:		28 April 1998
# Whom:			Ejovi Nuwere <ejovi@ejovi.net>
#
# $OpenBSD: Makefile,v 1.23 2013/03/11 11:35:58 espie Exp $
#

COMMENT=	download news articles from NNTP server

DISTNAME=	newsfetch-1.21
CATEGORIES=	news
MASTER_SITES=	${MASTER_SITE_SUNSITE:=system/news/readers/}

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c 

MAKE_ENV+=	INSTALL_PROGRAM="${INSTALL_PROGRAM}" INSTALL_MAN="${INSTALL_MAN}"

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
