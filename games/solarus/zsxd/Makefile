# $OpenBSD: Makefile,v 1.1.1.1 2013/06/17 02:51:13 bcallah Exp $

COMMENT =	fan made parody Zelda game for Solarus engine
DISTNAME =	zsxd-1.5.4

HOMEPAGE =	http://www.solarus-games.org/games/zelda-mystery-of-solarus-xd/

# GPLv3+ and CC BY-SA 3.0
PERMIT_PACKAGE_CDROM =	contains copyrighted artwork
PERMIT_PACKAGE_FTP =	Yes

MASTER_SITES =	http://devio.us/~bcallah/source/

RUN_DEPENDS =	games/solarus/solarus

NO_BUILD =	Yes
PKG_ARCH =	*

post-patch:
	${SUBST_CMD} ${WRKSRC}/zsxd

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/zsxd ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/solarus/zsxd
	${INSTALL_DATA} ${WRKSRC}/data.solarus ${PREFIX}/share/solarus/zsxd

.include <bsd.port.mk>
