# OpenBSD makefile for:	newsfetch
# Version required:	1.0
# Date created:		19 Dec 1997
# Whom:			joey
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/20 02:13:15 joey Exp $
#

DISTNAME=	newsfetch-1.0
CATEGORIES=	news
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	system/news/readers

MAINTAINER=	joey@OpenBSD.ORG

MAN1=		newsfetch.1
MAKE_ENV+=	INSTALL_PROGRAM="${INSTALL_PROGRAM}" INSTALL_MAN="${INSTALL_MAN}"

.include <bsd.port.mk>
