# $OpenBSD: Makefile,v 1.23 2007/09/15 18:01:01 simon Exp $
#

COMMENT=	GNU version of Shogi

DISTNAME=	gnushogi-1.2p03
PKGNAME=	gnushogi-1.2.3
CATEGORIES=	games

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses m termcap

MASTER_SITES=	${MASTER_SITE_GNU:=gnushogi/}

MAKE_ENV=	CC="${CC}"
WRKSRC=		${WRKDIST}/src

NO_REGRESS=	Yes

DOCFILES=	shogi.rules tutorial1.gam tutorial2.gam

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gnushogi
	${INSTALL_PROGRAM} ${WRKSRC}/gnushogi ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/gnushogir ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/gnushogix ${PREFIX}/libexec
	${INSTALL_DATA} ${WRKSRC}/gnushogi.bbk ${PREFIX}/share/gnushogi
	${INSTALL_MAN} ${WRKDIST}/doc/gnushogi.1 ${PREFIX}/man/man6/gnushogi.6
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnushogi
.for doc in ${DOCFILES}
	${INSTALL_DATA} ${WRKDIST}/doc/${doc} ${PREFIX}/share/doc/gnushogi
.endfor

.include <bsd.port.mk>
