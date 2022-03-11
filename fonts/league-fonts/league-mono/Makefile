COMMENT =	mashup of beautiful monospace font forms

V =		2.220
DISTNAME =	LeagueMono-$V
LEAGUE_FONT =	league-mono
REVISION =	0

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/static/TTF/*.ttf ${WRKSRC}/static/OTF/*.otf \
		${FONTDIR}

.include <bsd.port.mk>
