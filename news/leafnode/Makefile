# $OpenBSD: Makefile,v 1.12 2000/04/09 17:37:42 espie Exp $

DISTNAME=	leafnode-1.9.2
CATEGORIES=	news
FAKE=No

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

