BROKEN-riscv64 =	...error "Unknown CPU architecture"

COMMENT =		classic Minecraft client written in C

V =			1.3.6
PKGNAME =		classicube-${V}

DIST_TUPLE +=		github ClassiCube ClassiCube 1.3.6 .

CATEGORIES =		games

MAINTAINER =		izzy Meyer <izder456@disroot.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		GL X11 Xi c execinfo m pthread

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =		net/curl \
			audio/openal
RUN_DEPENDS =		devel/desktop-file-utils

USE_GMAKE =		Yes

ALL_TARGET =		ClassiCube

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/classicube
	${INSTALL_PROGRAM} ${WRKSRC}/ClassiCube ${PREFIX}/share/classicube/classicube_run
	${INSTALL_DATA_DIR} ${PREFIX}/share/licenses/classicube
	${INSTALL_DATA} ${WRKSRC}/license.txt \
		${PREFIX}/share/licenses/classicube/license.txt
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/misc/CCicon.png \
		${PREFIX}/share/classicube/CCicon.png
	@${SUBST_DATA} ${FILESDIR}/classicube.desktop \
		${PREFIX}/share/applications/classicube.desktop
	@${SUBST_PROGRAM} ${FILESDIR}/classicube \
		${PREFIX}/bin/classicube

.include <bsd.port.mk>
