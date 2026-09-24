COMMENT =	multiplayer server for the game Minecraft

V =		26.3
DISTNAME =	server
PKGNAME =	minecraft-server-$V

CATEGORIES =	games

HOMEPAGE =	https://www.minecraft.net/en-us/download/server

# https://www.minecraft.net/en-us/eula
# Noncommercial use only, no redistribution permission
PERMIT_PACKAGE =	No redistribution permission
PERMIT_DISTFILES =	No redistribution permission

SITES =		https://piston-data.mojang.com/v1/objects/33680f5f2ac32864d6d7cf5e56a705fdb3e05f4c/

EXTRACT_ONLY =
EXTRACT_SUFX =	.jar
DIST_SUBDIR =	minecraft-server-$V

MODULES =	java
MODJAVA_VER =	25+
RUN_DEPENDS =	java/javaPathHelper

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/minecraft-server
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
		${PREFIX}/share/minecraft-server
	${SUBST_CMD} -m 555 -c ${FILESDIR}/minecraft-server \
		${WRKSRC}/minecraft-server
	${INSTALL_SCRIPT} ${WRKSRC}/minecraft-server ${PREFIX}/bin
	${INSTALL_DATA} ${FILESDIR}/minecraft-server.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
