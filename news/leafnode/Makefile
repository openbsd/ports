# OpenBSD makefile for:	leafnode
# Version required:	1.8.1
# Date created:		13 Jan 1999
# Whom:			Bob Pepin
#
# $OpenBSD: Makefile,v 1.3 1999/01/31 01:38:06 marc Exp $
#

DISTNAME=		leafnode-1.8.1
CATEGORIES=		news

MAINTAINER=		bob@prophecy.lu

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	system/news/transport

.include <bsd.port.mk>

update: install
	(cd $(WRKSRC) && make update)
