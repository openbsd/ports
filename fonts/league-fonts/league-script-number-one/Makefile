COMMENT =	modern, coquettish script font

V =		1.001pre1
DISTNAME =	LeagueScriptNumberOne-$V
LEAGUE_FONT =	league-script-number-one
REVISION =	0

HOMEPAGE =	https://www.theleagueofmoveabletype.com/league-script

MASTER_SITES =	https://distfiles.roadrunner.page/

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.otf ${FONTDIR}

.include <bsd.port.mk>
