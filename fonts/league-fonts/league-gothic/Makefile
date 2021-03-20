# $OpenBSD: Makefile,v 1.1.1.1 2021/03/20 12:30:46 bentley Exp $

COMMENT =	revival of classic gothic typeface

V =		1.601
DISTNAME =	LeagueGothic-$V
LEAGUE_FONT =	league-gothic

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/static/TTF/*.ttf ${WRKSRC}/static/OTF/*.otf \
		${FONTDIR}

.include <bsd.port.mk>
