COMMENT =	multiplayer server for the game Terraria

# Check for new versions at https://terraria.wiki.gg/wiki/Server#Downloads
V =		1.4.5.8
DISTNAME =	terraria-server-${V:S/.//g}
PKGNAME =	terraria-server-$V

CATEGORIES =	games net

HOMEPAGE =	https://terraria.org/

# freeware
PERMIT_PACKAGE =	No redistribution permission
PERMIT_DISTFILES =	No redistribution permission

SITES =		https://terraria.org/api/download/pc-dedicated-server/

EXTRACT_SUFX =		.zip

RUN_DEPENDS =		games/indierunner

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*
WRKDIST =		${WRKDIR}/${V:S/.//g}
WRKSRC =		${WRKDIST}/Linux

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/terraria-server
	${INSTALL_DATA} ${WRKSRC}/TerrariaServer.exe ${WRKSRC}/FNA.dll \
		${PREFIX}/share/terraria-server
	${INSTALL_SCRIPT} ${FILESDIR}/TerrariaServer ${PREFIX}/bin

.include <bsd.port.mk>
