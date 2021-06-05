# $OpenBSD: Makefile,v 1.14 2021/06/05 12:34:05 jasper Exp $

COMMENT =	fan made Zelda game for Solarus engine

GH_ACCOUNT=	christopho
GH_PROJECT=	zsdx
GH_TAGNAME=	${GH_PROJECT}-1.11.0
DISTNAME=	${GH_TAGNAME}
REVISION =	1

HOMEPAGE =	https://www.solarus-games.org/en/games/the-legend-of-zelda-mystery-of-solarus-dx

# GPLv3+ and CC BY-SA 3.0
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake

BUILD_DEPENDS =	archivers/zip

RUN_DEPENDS =	games/solarus/solarus>=1.5.0

.include <bsd.port.mk>
