# $OpenBSD: Makefile,v 1.3 1999/10/02 21:48:27 brad Exp $

DISTNAME=	xjig-2.4
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

MAKEFILE=	Makefile.Linux

do-install:
	@${MKDIR} ${PREFIX}/share/xjig
	${INSTALL_PROGRAM} ${WRKSRC}/xjig ${PREFIX}/bin/xjig
	${INSTALL_MAN} ${WRKSRC}/xjig.man ${PREFIX}/man/man1/xjig.1
	${INSTALL_DATA} ${WRKSRC}/tina.gif ${PREFIX}/share/xjig

.include <bsd.port.mk>
