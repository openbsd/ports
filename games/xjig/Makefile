# OpenBSD makefile for:	xjig
# Version required:	2.4
# Date Created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 03:20:30 angelos Exp $
#

DISTNAME=	xjig-2.4
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

MAKEFILE=	Makefile.Linux
MAN1=		xjig.1

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/xjig ${PREFIX}/bin/xjig
	@ ${INSTALL_MAN} ${WRKSRC}/xjig.man ${PREFIX}/man/man1/xjig.1

.include <bsd.port.mk>
