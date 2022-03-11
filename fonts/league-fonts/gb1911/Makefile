COMMENT =	font based on Kennerley Oldstyle

V =		2010.07.03
DISTNAME =	gb1911-$V
PKGNAME =	gb1911-$V
LEAGUE_FONT =	goudy-bookletter-1911
REVISION =	0

MASTER_SITES =	https://crudfactory.com/
EXTRACT_SUFX =	.zip
WRKDIST =	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${WRKSRC}/*.otf ${FONTDIR}

.include <bsd.port.mk>
