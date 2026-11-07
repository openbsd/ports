COMMENT =	single-file drop-in media player web app

GH_ACCOUNT =	pseudosavant
GH_PROJECT =	player.html
GH_TAGNAME =	2.38.0

CATEGORIES =	multimedia www

# MIT
PERMIT_PACKAGE =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

PREFIX =	${VARBASE}/www

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/player.html
	${INSTALL_DATA} ${WRKSRC}/dist/* ${PREFIX}/player.html

.include <bsd.port.mk>
