# $OpenBSD: Makefile,v 1.9 2000/01/26 22:14:01 espie Exp $

DISTNAME=	leafnode-1.9.2
CATEGORIES=	news

MAINTAINER=	bob@prophecy.lu

MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= system/news/transport

SYSCONFDIR=	/etc/leafnode
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= --sysconfdir=${SYSCONFDIR} --localstatedir=/var

pre-install:
	@perl ${SCRIPTDIR}/pre-install.pl

update: install
	cd $(WRKSRC) && make update

.include <bsd.port.mk>

