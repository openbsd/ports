# OpenBSD makefile for:    Splitvt
# Version required:     1.6.1
# Date created:         Dec 16 1997
# Whom:                 joey@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/17 23:01:43 joey Exp $
#

DISTNAME=	splitvt-1.6.3
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	utils/console

MAINTAINER=     joey@OpenBSD.ORG

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT=	Configure
ALL_TARGET=
MAN1=		splitvt.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/splitvt ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/splitvt.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
