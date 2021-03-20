# $OpenBSD: Makefile,v 1.1.1.1 2021/03/20 12:33:02 bentley Exp $

COMMENT =	geometric sans-serif from the future

V =		1.000pre1
DISTNAME =	Orbitron-$V
LEAGUE_FONT =	orbitron

MASTER_SITES =	https://distfiles.roadrunner.page/

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${WRKSRC}/*.otf ${FONTDIR}

.include <bsd.port.mk>
