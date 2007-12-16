# $OpenBSD: Makefile,v 1.24 2007/12/16 01:01:29 ajacoutot Exp $

COMMENT=	GNU version of Shogi

DISTNAME=	gnushogi-1.3
CATEGORIES=	games

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c curses m termcap

MASTER_SITES=	${MASTER_SITE_GNU:=gnushogi/}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-x \
		--without-xshogi

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gnushogi
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnushogi
	${INSTALL_PROGRAM} ${WRKSRC}/gnushogi/gnushogi ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/gnushogi/gnushogi.bbk ${PREFIX}/share/gnushogi
	${INSTALL_MAN} ${WRKDIST}/doc/gnushogi.6 ${PREFIX}/man/man6/gnushogi.6
	${INSTALL_DATA} ${WRKDIST}/doc/BOOKFILES ${PREFIX}/share/doc/gnushogi
	${INSTALL_DATA}	${WRKDIST}/doc/PORTING ${PREFIX}/share/doc/gnushogi
	${INSTALL_DATA}	${WRKSRC}/doc/*.gam ${PREFIX}/share/doc/gnushogi
	${INSTALL_DATA}	${WRKSRC}/doc/*.html ${PREFIX}/share/doc/gnushogi
	${INSTALL_DATA}	${WRKSRC}/doc/*.ref ${PREFIX}/share/doc/gnushogi
	${INSTALL_DATA}	${WRKSRC}/doc/*.rules ${PREFIX}/share/doc/gnushogi

.include <bsd.port.mk>
