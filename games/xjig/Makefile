# $OpenBSD: Makefile,v 1.4 2000/02/11 01:10:03 espie Exp $

DISTNAME=	xjig-2.4
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

MAKEFILE=	Makefile.Linux

do-install:
	@mkdir -p ${PREFIX}/share/xjig
	${INSTALL_PROGRAM} ${WRKSRC}/xjig ${PREFIX}/bin/xjig
	${INSTALL_MAN} ${WRKSRC}/xjig.man ${PREFIX}/man/man1/xjig.1
	${INSTALL_DATA} ${WRKSRC}/tina.gif ${PREFIX}/share/xjig

.include <bsd.port.mk>
