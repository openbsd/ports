# $OpenBSD: Makefile,v 1.1.1.1 2021/03/20 12:28:44 bentley Exp $

COMMENT =	serif based on the work of Rudolph Ruzicka

V =		1.1
DISTNAME =	fanwood-$V
LEAGUE_FONT =	fanwood

MASTER_SITES =	https://crudfactory.com/
EXTRACT_SUFX =	.zip
WRKDIST =	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.otf ${FONTDIR}

.include <bsd.port.mk>
