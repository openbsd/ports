# $OpenBSD: Makefile,v 1.1.1.1 2013/06/17 02:49:38 bcallah Exp $

COMMENT =	fan made Zelda game for Solarus engine
DISTNAME =	zsdx-1.5.3

HOMEPAGE =	http://www.solarus-games.org/games/zelda-mystery-of-solarus-dx/

# GPLv3+ and CC BY-SA 3.0
PERMIT_PACKAGE_CDROM =	contains copyrighted artwork
PERMIT_PACKAGE_FTP =	Yes

MASTER_SITES =	http://devio.us/~bcallah/source/

RUN_DEPENDS =	games/solarus/solarus

NO_BUILD =	Yes
PKG_ARCH =	*

post-patch:
	${SUBST_CMD} ${WRKSRC}/zsdx

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/zsdx ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/solarus/zsdx
	${INSTALL_DATA} ${WRKSRC}/data.solarus ${PREFIX}/share/solarus/zsdx

.include <bsd.port.mk>
