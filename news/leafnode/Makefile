# $OpenBSD: Makefile,v 1.11 2000/03/23 03:43:41 turan Exp $

DISTNAME=	leafnode-1.9.2
CATEGORIES=	news

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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

