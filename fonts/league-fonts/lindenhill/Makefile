COMMENT =	digital version of Frederic Goudy's Deepdene

V =		1.2
DISTNAME =	lindenhill-$V
PKGNAME =	lindenhill-$V
LEAGUE_FONT =	linden-hill
REVISION =	0

MASTER_SITES =	https://crudfactory.com/
EXTRACT_SUFX =	.zip
WRKDIST =	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.otf ${FONTDIR}

.include <bsd.port.mk>
