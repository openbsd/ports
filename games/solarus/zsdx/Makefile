# $OpenBSD: Makefile,v 1.12 2019/07/14 00:39:36 naddy Exp $

COMMENT =	fan made Zelda game for Solarus engine

GH_ACCOUNT=	christopho
GH_PROJECT=	zsdx
GH_TAGNAME=	${GH_PROJECT}-1.11.0
DISTNAME=	${GH_TAGNAME}

HOMEPAGE =	http://www.solarus-games.org/games/zelda-mystery-of-solarus-dx/

# GPLv3+ and CC BY-SA 3.0
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake

BUILD_DEPENDS =	archivers/zip

RUN_DEPENDS =	games/solarus/solarus>=1.5.0

.include <bsd.port.mk>
