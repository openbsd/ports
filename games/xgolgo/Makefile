# $OpenBSD: Makefile,v 1.3 1999/01/14 02:28:33 angelos Exp $
#

DISTNAME=	xeyes-g
PKGNAME=	xgolgo-1.0
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://ftp.netlab.is.tsukuba.ac.jp/pub/X/our_collections/misc/

USE_IMAKE=	yes
NO_INSTALL_MANPAGES=	yes

WRKSRC=		${WRKDIR}/xeyes

post-install:
	${INSTALL_MAN} ${WRKSRC}/xeyes.man ${PREFIX}/man/man1/xgolgo.1

.include <bsd.port.mk>
