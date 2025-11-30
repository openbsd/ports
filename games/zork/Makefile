COMMENT =	game of adventure, danger, and low cunning

DISTNAME =	zork-0

DIST_TUPLE +=	github historicalsource zork1 97b7b3d68c075dd9af7da499c3e9690ada3471fd zork1
DIST_TUPLE +=	github historicalsource zork2 3da9661098809788a99cef00f00c865c6c204f96 zork2
DIST_TUPLE +=	github historicalsource zork3 3ec9ed412b5f3cafe65d83c727d07db1fe4a86a8 zork3

CATEGORIES =	games

# MIT
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/zork
	${INSTALL_DATA} ${WRKSRC}/zork*/COMPILED/*.z3 ${PREFIX}/share/zork
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zork
	${INSTALL_DATA} ${WRKSRC}/zork1/LICENSE ${PREFIX}/share/doc/zork

.include <bsd.port.mk>
