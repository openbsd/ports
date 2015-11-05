# $OpenBSD: Makefile,v 1.10 2015/11/05 18:49:20 jasper Exp $

COMMENT =	fan made Zelda game for Solarus engine

GH_ACCOUNT=	christopho
GH_PROJECT=	zsdx
GH_TAGNAME=	${GH_PROJECT}-1.10.1
DISTNAME=	${GH_TAGNAME}
REVISION =	0

HOMEPAGE =	http://www.solarus-games.org/games/zelda-mystery-of-solarus-dx/

# GPLv3+ and CC BY-SA 3.0
PERMIT_PACKAGE_CDROM =	contains copyrighted artwork
PERMIT_PACKAGE_FTP =	Yes

MODULES =	devel/cmake

BUILD_DEPENDS =	archivers/zip

RUN_DEPENDS =	games/solarus/solarus>=1.4.4

.include <bsd.port.mk>
