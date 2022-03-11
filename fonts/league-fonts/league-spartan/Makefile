COMMENT =	revival of ATF's Spartan sans-serif

V =		2.220
DISTNAME =	LeagueSpartan-$V
LEAGUE_FONT =	league-spartan
REVISION =	0

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/static/TTF/*.ttf ${WRKSRC}/static/OTF/*.otf \
		 ${FONTDIR}

.include <bsd.port.mk>
