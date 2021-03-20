# $OpenBSD: Makefile,v 1.1.1.1 2021/03/20 12:32:10 bentley Exp $

COMMENT =	revival of ATF's Spartan sans-serif

V =		2.220
DISTNAME =	LeagueSpartan-$V
LEAGUE_FONT =	league-spartan

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/static/TTF/*.ttf ${WRKSRC}/static/OTF/*.otf \
		 ${FONTDIR}

.include <bsd.port.mk>
