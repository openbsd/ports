# $OpenBSD: Makefile,v 1.1.1.1 2021/03/20 12:29:34 bentley Exp $

COMMENT =	revival of Goudy Oldstyle and Italic

V =		3.1
DISTNAME =	goudy-$V
PKGNAME =	goudy-$V
LEAGUE_FONT =	sorts-mill-goudy

MASTER_SITES =	https://crudfactory.com/
EXTRACT_SUFX =	.zip
WRKDIST =	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${WRKSRC}/*.otf ${FONTDIR}

.include <bsd.port.mk>
