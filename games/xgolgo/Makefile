# OpenBSD makefile for:   xgolgo
# Version required:    1.0
# Date created:        May 19 1998
# Whom:                Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 03:18:03 angelos Exp $
#

DISTNAME=	xeyes-g
PKGNAME=	xgolgo-1.0
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.cc.saga-u.ac.jp/pub/X/xeyes/

MAINTAINER=	angelos@openbsd.org

WRKSRC=		${WRKDIR}/xeyes
USE_IMAKE=	yes
NO_INSTALL_MANPAGES=	yes
MAN1=		xgolgo.1

post-install:
	${INSTALL_MAN} ${WRKSRC}/xeyes.man ${PREFIX}/man/man1/xgolgo.1

.include <bsd.port.mk>
