# $OpenBSD: Makefile,v 1.2 2021/03/23 07:17:05 bentley Exp $

COMMENT =	elegant variable sans-serif

V =		4.101
DISTNAME =	Raleway-$V
LEAGUE_FONT =	raleway
REVISION =	0

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/static/TTF/*.ttf ${WRKSRC}/static/OTF/*.otf \
		${FONTDIR}

.include <bsd.port.mk>
