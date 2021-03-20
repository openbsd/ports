# $OpenBSD: Makefile,v 1.1.1.1 2021/03/20 12:33:53 bentley Exp $

COMMENT =	roman serif with blackletter elements

V =		2.3
DISTNAME =	prociono-$V
LEAGUE_FONT =	prociono

MASTER_SITES =	https://crudfactory.com/
EXTRACT_SUFX =	.zip
WRKDIST =	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${WRKSRC}/*.otf ${FONTDIR}

.include <bsd.port.mk>
