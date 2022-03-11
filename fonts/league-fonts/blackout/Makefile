COMMENT =	stencil sans-serif typeface without holes

V =		2.002pre1
DISTNAME =	Blackout-$V
LEAGUE_FONT =	blackout
REVISION =	0

MASTER_SITES =	https://distfiles.roadrunner.page/

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTDIR}

.include <bsd.port.mk>
