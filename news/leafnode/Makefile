# $OpenBSD: Makefile,v 1.6 1999/03/17 03:46:25 brad Exp $

DISTNAME=		leafnode-1.9.2
CATEGORIES=		news

MAINTAINER=		bob@prophecy.lu

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	system/news/transport

SYSCONFDIR=		/etc/leafnode
GNU_CONFIGURE=          yes
CONFIGURE_ARGS+=	--sysconfdir=${SYSCONFDIR} --localstatedir=/var

.include <bsd.port.mk>

update: install
	(cd $(WRKSRC) && make update)
