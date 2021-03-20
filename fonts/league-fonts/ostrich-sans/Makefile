# $OpenBSD: Makefile,v 1.1.1.1 2021/03/20 12:33:27 bentley Exp $

COMMENT =	gorgeous modern sans-serif with a very long neck

V =		1.000pre1
DISTNAME =	OstrichSans-$V
LEAGUE_FONT =	ostrich-sans

MASTER_SITES =	https://distfiles.roadrunner.page/

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.otf ${FONTDIR}

.include <bsd.port.mk>
