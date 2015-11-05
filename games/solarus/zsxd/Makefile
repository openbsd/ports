# $OpenBSD: Makefile,v 1.9 2015/11/05 11:31:58 jasper Exp $

COMMENT =	fan made parody Zelda game for Solarus engine

GH_ACCOUNT=	christopho
GH_PROJECT=	zsxd
GH_TAGNAME=	${GH_PROJECT}-1.10.1
DISTNAME=	${GH_TAGNAME}

HOMEPAGE =	http://www.solarus-games.org/games/zelda-mystery-of-solarus-xd/

# GPLv3+ and CC BY-SA 3.0
PERMIT_PACKAGE_CDROM =	contains copyrighted artwork
PERMIT_PACKAGE_FTP =	Yes

MODULES =	devel/cmake

BUILD_DEPENDS =	archivers/zip

RUN_DEPENDS =	games/solarus/solarus>=1.4.4

.include <bsd.port.mk>
