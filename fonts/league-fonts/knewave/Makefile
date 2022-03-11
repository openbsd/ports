COMMENT =	bold, painted typeface for the rocker within

V =		2.000pre1
DISTNAME =	Knewave-$V
LEAGUE_FONT =	knewave
REVISION =	0

MASTER_SITES =	https://distfiles.roadrunner.page/

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.otf ${WRKSRC}/*.ttf ${FONTDIR}

.include <bsd.port.mk>
