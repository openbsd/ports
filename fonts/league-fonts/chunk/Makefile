# $OpenBSD: Makefile,v 1.1.1.1 2021/03/20 12:28:26 bentley Exp $

COMMENT =	ultra-bold slab serif typeface

V =		1.001pre1
DISTNAME =	Chunk-$V
LEAGUE_FONT =	chunk

MASTER_SITES =	https://distfiles.roadrunner.page/

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.otf ${WRKSRC}/*.ttf ${FONTDIR}

.include <bsd.port.mk>
