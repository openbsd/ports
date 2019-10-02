# $OpenBSD: Makefile,v 1.13 2019/10/02 17:50:39 jasper Exp $

COMMENT =	fan made parody Zelda game for Solarus engine

GH_ACCOUNT=	christopho
GH_PROJECT=	zsxd
GH_TAGNAME=	${GH_PROJECT}-1.11.0
DISTNAME=	${GH_TAGNAME}
REVISION =	0

HOMEPAGE =	https://www.solarus-games.org/en/games/the-legend-of-zelda-mystery-of-solarus-xd

# GPLv3+ and CC BY-SA 3.0
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake

BUILD_DEPENDS =	archivers/zip

RUN_DEPENDS =	games/solarus/solarus>=1.5.0

.include <bsd.port.mk>
