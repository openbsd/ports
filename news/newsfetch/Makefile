# OpenBSD makefile for:	newsfetch
# Version required:	1.0
# Date created:		28 April 1998
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.2 1998/04/29 04:18:32 angelos Exp $
#

DISTNAME=	newsfetch-1.0
CATEGORIES=	news
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	system/news/readers

MAINTAINER=	ejovi@openbsd.org

MAN1=		newsfetch.1
MAKE_ENV+=	INSTALL_PROGRAM="${INSTALL_PROGRAM}" INSTALL_MAN="${INSTALL_MAN}"

.include <bsd.port.mk>
