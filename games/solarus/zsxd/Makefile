# $OpenBSD: Makefile,v 1.4 2013/12/05 17:37:54 bcallah Exp $

V =		1.7.1
COMMENT =	fan made parody Zelda game for Solarus engine
DISTNAME =	zsxd-${V}

HOMEPAGE =	http://www.solarus-games.org/games/zelda-mystery-of-solarus-xd/

# GPLv3+ and CC BY-SA 3.0
PERMIT_PACKAGE_CDROM =	contains copyrighted artwork
PERMIT_PACKAGE_FTP =	Yes

MASTER_SITES =	https://github.com/christopho/zsxd/archive/

MODULES =	devel/cmake

BUILD_DEPENDS =	archivers/zip

RUN_DEPENDS =	games/solarus/solarus

WRKDIST =	${WRKDIR}/zsxd-zsxd-${V}

.include <bsd.port.mk>
