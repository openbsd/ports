# $OpenBSD: Makefile,v 1.7 2015/09/20 14:19:29 jasper Exp $

PORTROACH=	limit:^1\.7
PORTROACH_COMMENT=newer versions require an updated solarus engine

COMMENT =	fan made parody Zelda game for Solarus engine

GH_ACCOUNT=	christopho
GH_PROJECT=	zsxd
GH_TAGNAME=	${GH_PROJECT}-1.7.1
DISTNAME=	${GH_TAGNAME}

HOMEPAGE =	http://www.solarus-games.org/games/zelda-mystery-of-solarus-xd/

# GPLv3+ and CC BY-SA 3.0
PERMIT_PACKAGE_CDROM =	contains copyrighted artwork
PERMIT_PACKAGE_FTP =	Yes

MODULES =	devel/cmake

BUILD_DEPENDS =	archivers/zip

RUN_DEPENDS =	games/solarus/solarus

.include <bsd.port.mk>
