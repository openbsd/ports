COMMENT =	revival of Goudy Oldstyle and Italic

V =		3.1
DISTNAME =	goudy-$V
PKGNAME =	goudy-$V
LEAGUE_FONT =	sorts-mill-goudy
REVISION =	0

MASTER_SITES =	https://crudfactory.com/
EXTRACT_SUFX =	.zip
WRKDIST =	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${WRKSRC}/*.otf ${FONTDIR}

.include <bsd.port.mk>
