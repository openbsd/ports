# $OpenBSD: Makefile,v 1.10 2000/02/26 00:42:12 rohee Exp $

DISTNAME=	leafnode-1.9.2
CATEGORIES=	news

MAINTAINER=	ports@openbsd.org

LICENCE_TYPE=	GPL

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

