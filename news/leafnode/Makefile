# $OpenBSD: Makefile,v 1.8 1999/04/23 23:40:25 brad Exp $

DISTNAME=	leafnode-1.9.2
CATEGORIES=	news

MAINTAINER=	bob@prophecy.lu

MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= system/news/transport

SYSCONFDIR=	/etc/leafnode
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --sysconfdir=${SYSCONFDIR} --localstatedir=/var

update: install
	(cd $(WRKSRC) && make update)

.include <bsd.port.mk>

