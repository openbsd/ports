# $OpenBSD: Makefile,v 1.2 1998/11/09 01:49:58 marc Exp $
#

DISTNAME=	xeyes-g
PKGNAME=	xgolgo-1.0
CATEGORIES=	games

#BROKEN=	"source no longer available at MASTER_SITES"

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://ftp.cc.saga-u.ac.jp/pub/X/xeyes/

USE_IMAKE=	yes
NO_INSTALL_MANPAGES=	yes

WRKSRC=		${WRKDIR}/xeyes

post-install:
	${INSTALL_MAN} ${WRKSRC}/xeyes.man ${PREFIX}/man/man1/xgolgo.1

.include <bsd.port.mk>
