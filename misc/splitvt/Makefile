# $OpenBSD: Makefile,v 1.2 1999/04/06 19:56:15 rohee Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	splitvt-1.6.3
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	utils/console

MAINTAINER=     ports@OpenBSD.ORG

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT=	Configure
ALL_TARGET=
MAN1=		splitvt.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/splitvt ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/splitvt.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
