COMMENT =	mashup of beautiful monospace font forms

V =		2.300
DISTNAME =	LeagueMono-$V
LEAGUE_FONT =	league-mono

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/static/TTF/*.ttf ${WRKSRC}/static/OTF/*.otf \
		${FONTDIR}

.include <bsd.port.mk>
