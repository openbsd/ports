# $OpenBSD: Makefile,v 1.7 1999/03/22 01:39:49 brad Exp $

DISTNAME=		leafnode-1.9.2
CATEGORIES=		news

MAINTAINER=		bob@prophecy.lu

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	system/news/transport

SYSCONFDIR=		/etc/leafnode
GNU_CONFIGURE=          yes
CONFIGURE_ARGS+=	--sysconfdir=${SYSCONFDIR} --localstatedir=/var

MAN1=	newsq.1
MAN8=	fetch.8 applyfilter.8 leafnode.8 texpire.8 checkgroups.8


update: install
	(cd $(WRKSRC) && make update)

.include <bsd.port.mk>

