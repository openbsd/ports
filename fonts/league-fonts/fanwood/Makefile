COMMENT =	serif based on the work of Rudolph Ruzicka

V =		1.1
DISTNAME =	fanwood-$V
LEAGUE_FONT =	fanwood
REVISION =	0

MASTER_SITES =	https://crudfactory.com/
EXTRACT_SUFX =	.zip
WRKDIST =	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.otf ${FONTDIR}

.include <bsd.port.mk>
