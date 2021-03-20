# $OpenBSD: Makefile,v 1.1.1.1 2021/03/20 12:32:40 bentley Exp $

COMMENT =	digital version of Frederic Goudy's Deepdene

V =		1.2
DISTNAME =	lindenhill-$V
PKGNAME =	lindenhill-$V
LEAGUE_FONT =	linden-hill

MASTER_SITES =	https://crudfactory.com/
EXTRACT_SUFX =	.zip
WRKDIST =	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.otf ${FONTDIR}

.include <bsd.port.mk>
