# $OpenBSD: Makefile,v 1.1.1.1 2021/03/20 12:29:15 bentley Exp $

COMMENT =	font based on Kennerley Oldstyle

V =		2010.07.03
DISTNAME =	gb1911-$V
PKGNAME =	gb1911-$V
LEAGUE_FONT =	goudy-bookletter-1911

MASTER_SITES =	https://crudfactory.com/
EXTRACT_SUFX =	.zip
WRKDIST =	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${WRKSRC}/*.otf ${FONTDIR}

.include <bsd.port.mk>
