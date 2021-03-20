# $OpenBSD: Makefile,v 1.1.1.1 2021/03/20 12:31:10 bentley Exp $

COMMENT =	mashup of beautiful monospace font forms

V =		2.220
DISTNAME =	LeagueMono-$V
LEAGUE_FONT =	league-mono

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/static/TTF/*.ttf ${WRKSRC}/static/OTF/*.otf \
		${FONTDIR}

.include <bsd.port.mk>
