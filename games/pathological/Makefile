# $OpenBSD: Makefile,v 1.19 2019/07/12 20:46:22 sthen Exp $

COMMENT=	enriched clone of the game Logical by Rainbow Arts

DISTNAME=	pathological-1.1.3
REVISION =	6
CATEGORIES=	games
HOMEPAGE=	http://pathological.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pathological/}

MODULES=	lang/python

RUN_DEPENDS=	devel/pygame
BUILD_DEPENDS=	graphics/netpbm

NO_TEST=	Yes

DOCDIR=		${PREFIX}/share/doc/pathological
GAMEDIR=	${PREFIX}/share/pathological

pre-build:
	@perl -pi -e 's,%%LOCALBASE%%,${LOCALBASE},g' \
		${WRKSRC}/pathological{,.py} 
	@perl -pi -e 's,/usr/bin/python,${MODPY_BIN},g' \
		${WRKSRC}/pathological.py

do-build:
	cd ${WRKSRC} && \
		${CC} ${CFLAGS} -o write-highscores write-highscores.c \
		&& ./makehtml

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pathological ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/write-highscores ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${GAMEDIR}/{circuits,graphics,music,sounds}
	${INSTALL_PROGRAM} ${WRKSRC}/pathological.py ${GAMEDIR}
	${INSTALL_DATA} ${WRKSRC}/circuits/all-boards ${GAMEDIR}/circuits
	${INSTALL_DATA}	${WRKSRC}/graphics/*.{jpg,png} ${GAMEDIR}/graphics
	${INSTALL_DATA} ${WRKSRC}/music/*.xm ${GAMEDIR}/music
	${INSTALL_DATA} ${WRKSRC}/sounds/*.wav ${GAMEDIR}/sounds
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/pathological.xpm ${PREFIX}/share/pixmaps
	@gunzip ${WRKSRC}/pathological.6.gz
	${INSTALL_MAN} ${WRKSRC}/pathological.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${DOCDIR}/html
	${INSTALL_DATA} ${WRKSRC}/html/*.{html,png} ${DOCDIR}/html
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pathological
	${INSTALL_DATA} /dev/null \
		${PREFIX}/share/examples/pathological/pathological_scores

.include <bsd.port.mk>
