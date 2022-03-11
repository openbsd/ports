COMMENT =	revival of classic gothic typeface

V =		1.601
DISTNAME =	LeagueGothic-$V
LEAGUE_FONT =	league-gothic
REVISION =	0

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/static/TTF/*.ttf ${WRKSRC}/static/OTF/*.otf \
		${FONTDIR}

.include <bsd.port.mk>
