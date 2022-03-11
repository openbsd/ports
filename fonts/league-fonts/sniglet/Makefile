COMMENT =	fun rounded display face that's great for headlines

V =		1.000pre1
DISTNAME =	Sniglet-$V
LEAGUE_FONT =	sniglet
REVISION =	0

MASTER_SITES =	https://distfiles.roadrunner.page/

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${WRKSRC}/*.otf ${FONTDIR}

.include <bsd.port.mk>
