COMMENT =	typeface based on the Chicago Freedom Movement

V =		1.007
DISTNAME =	TheNeueBlack-$V
LEAGUE_FONT =	the-neue-black

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/static/*/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/static/*/*.otf ${FONTDIR}

.include <bsd.port.mk>
