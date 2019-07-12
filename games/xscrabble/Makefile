# $OpenBSD: Makefile,v 1.33 2019/07/12 20:46:28 sthen Exp $

COMMENT=	X11 version of the popular board game

V=		2.12
DISTNAME=	xscrabble-${V}
REVISION =	3
CATEGORIES=	games

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		xscrabble_en${EXTRACT_SUFX} \
		xscrabble_fr${EXTRACT_SUFX}

EXTRACT_SUFX=	.tar.bz2

MASTER_SITES=	ftp://ftp.ac-grenoble.fr/ge/educational_games/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c \
		xcb z bz2>=10

LIB_DEPENDS=	archivers/bzip2

CONFIGURE_STYLE=imake noman

NO_TEST=	Yes

XSCRABBLEDIR=	${PREFIX}/lib/X11/xscrabble

FLAVORS=	en fr
FLAVOR?=	en

.if ${FLAVOR} != "en" && ${FLAVOR} != "fr"
ERRORS+=	you must choose (only) one language: ${FLAVORS}
.endif

.if ${FLAVOR} == "en"
DICT=		OSPD3
RULES=		scrabble_rules
.elif ${FLAVOR} == "fr"
DICT=		ODS4
RULES=		scrabble_regles
.endif

pre-configure:
	@echo '#define VERSION ${V:S/.//g}' \
		>> ${WRKSRC}/src/config.h
	@echo '#define DICT_FILE "${XSCRABBLEDIR}/${DICT}.gz"' \
		>> ${WRKSRC}/src/config.h
	@echo '#define SCORE_FILE "/var/games/xscrabble.scores"' \
		>> ${WRKSRC}/src/config.h
	@echo '#define RULES_FILE "${XSCRABBLEDIR}/${RULES}"' \
		>> ${WRKSRC}/src/config.h
	@perl -pi -e 's,!!CFLAGS!!,${CFLAGS},g' \
		${WRKSRC}/Imakefile
	@perl -pi -e 's,!!XSCRABBLEDIR!!,${XSCRABBLEDIR},g;' \
		-e 's,!!DICT!!,${DICT},g;' \
		-e 's,!!RULES!!,${RULES},g' \
		${WRKSRC}/XScrabble

do-install:
	${INSTALL_DATA_DIR} ${XSCRABBLEDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xscrabble
	${INSTALL_PROGRAM} ${WRKBUILD}/src/xscrab ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/src/xscrabble ${PREFIX}/bin
	${INSTALL_DATA} ${WRKBUILD}/XScrabble ${PREFIX}/lib/X11/app-defaults
	ln -sf ${TRUEPREFIX}/lib/X11/app-defaults/XScrabble \
		${PREFIX}/lib/X11/app-defaults/XScrabble_${FLAVOR}
	${INSTALL_DATA} ${WRKDIR}/xscrabble_${FLAVOR}/lib/${DICT}.gz \
		${WRKDIR}/xscrabble_${FLAVOR}/lib/duplicate \
		${WRKDIR}/xscrabble_${FLAVOR}/lib/${RULES} \
		${XSCRABBLEDIR}
	${INSTALL_DATA} /dev/null \
		${PREFIX}/share/examples/xscrabble/xscrabble.scores

.include <bsd.port.mk>
