# $OpenBSD: Makefile,v 1.1.1.1 2021/03/20 12:34:13 bentley Exp $

COMMENT =	elegant variable sans-serif

V =		4.101
DISTNAME =	Raleway-$V
LEAGUE_FONT =	raleway

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/static/TTF/*.ttf ${WRKSRC}/static/OTF/*.otf \
		${FONTDIR}

.include <bsd.port.mk>
