# $OpenBSD: Makefile,v 1.4 2000/02/11 00:37:25 espie Exp $
#

DISTNAME=	xeyes-g
PKGNAME=	xgolgo-1.0
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://ftp.netlab.is.tsukuba.ac.jp/pub/X/our_collections/misc/
NEED_VERSION=	1.191

USE_IMAKE=	yes
NO_INSTALL_MANPAGES=	yes

WRKDIST=	${WRKDIR}/xeyes

post-install:
	${INSTALL_MAN} ${WRKSRC}/xeyes.man ${PREFIX}/man/man1/xgolgo.1

.include <bsd.port.mk>
