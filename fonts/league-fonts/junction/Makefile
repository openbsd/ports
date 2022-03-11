COMMENT =	humanist sans-serif typeface

V =		1.001pre1
DISTNAME =	Junction-$V
LEAGUE_FONT =	junction
REVISION =	0

MASTER_SITES =	https://distfiles.roadrunner.page/

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.otf ${FONTDIR}

.include <bsd.port.mk>
