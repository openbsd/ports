# $OpenBSD: Makefile,v 1.5 2015/08/25 13:18:26 sthen Exp $

V =		1.7.1
COMMENT =	fan made Zelda game for Solarus engine
DISTNAME =	zsdx-${V}
REVISION =	0

HOMEPAGE =	http://www.solarus-games.org/games/zelda-mystery-of-solarus-dx/

# GPLv3+ and CC BY-SA 3.0
PERMIT_PACKAGE_CDROM =	contains copyrighted artwork
PERMIT_PACKAGE_FTP =	Yes

MASTER_SITES =	https://github.com/christopho/zsdx/archive/

MODULES =	devel/cmake

BUILD_DEPENDS =	archivers/zip

RUN_DEPENDS =	games/solarus/solarus

WRKDIST =	${WRKDIR}/zsdx-zsdx-${V}

.include <bsd.port.mk>
