COMMENT=	GNU version of Shogi

DISTNAME=	gnushogi-1.4.2
REVISION=	0
CATEGORIES=	games

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses m

SITES=		${SITE_GNU:=gnushogi/}

CONFIGURE_STYLE=gnu

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gnushogi
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnushogi
	${INSTALL_PROGRAM} ${WRKSRC}/gnushogi/gnushogi ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/gnushogi/gnushogi.bbk ${PREFIX}/share/gnushogi
	${INSTALL_MAN} ${WRKDIST}/doc/gnushogi.6 ${PREFIX}/man/man6/gnushogi.6
	${INSTALL_DATA} ${WRKDIST}/doc/BOOKFILES ${PREFIX}/share/doc/gnushogi
	${INSTALL_DATA}	${WRKDIST}/doc/PORTING ${PREFIX}/share/doc/gnushogi
	${INSTALL_DATA}	${WRKSRC}/doc/*.gam ${PREFIX}/share/doc/gnushogi
	${INSTALL_DATA}	${WRKSRC}/doc/*.rules ${PREFIX}/share/doc/gnushogi

.include <bsd.port.mk>
