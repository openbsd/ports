# OpenBSD makefile for:	leafnode
# Version required:	1.9
# Date created:		13 Jan 1999
# Whom:			Bob Pepin
#
# $OpenBSD: Makefile,v 1.5 1999/03/10 05:12:19 marc Exp $
#

DISTNAME=		leafnode-1.9
CATEGORIES=		news

#BROKEN=		"the MASTER_SITES now contain only version 1.9.2"
MAINTAINER=		bob@prophecy.lu

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	system/news/transport

GNU_CONFIGURE=          yes
CONFIGURE_ARGS+=	--sysconfdir=/etc/leafnode --localstatedir=/var

.include <bsd.port.mk>

update: install
	(cd $(WRKSRC) && make update)
