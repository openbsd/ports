# OpenBSD makefile for:	leafnode
# Version required:	1.9
# Date created:		13 Jan 1999
# Whom:			Bob Pepin
#
# $OpenBSD: Makefile,v 1.4 1999/02/21 20:26:35 marc Exp $
#

DISTNAME=		leafnode-1.9
CATEGORIES=		news

MAINTAINER=		bob@prophecy.lu

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	system/news/transport

GNU_CONFIGURE=          yes
CONFIGURE_ARGS+=	--sysconfdir=/etc/leafnode --localstatedir=/var

.include <bsd.port.mk>

update: install
	(cd $(WRKSRC) && make update)
