# OpenBSD makefile for:	newsfetch
# Version required:	1.0
# Date created:		28 April 1998
# Whom:			Ejovi Nuwere <ejovi@ejovi.net>
#
# $OpenBSD: Makefile,v 1.14 2002/03/21 21:09:21 espie Exp $
#

COMMENT=	"download news articles from NNTP server"

DISTNAME=	newsfetch-1.21
CATEGORIES=	news
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	system/news/readers
NEED_VERSION=	1.515

# License: BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MAN1=		newsfetch.1
MAKE_ENV+=	INSTALL_PROGRAM="${INSTALL_PROGRAM}" INSTALL_MAN="${INSTALL_MAN}"

.include <bsd.port.mk>
