BROKEN-riscv64 =	...error "Unknown CPU architecture"
BROKEN-sparc64 =	...error "Unknown CPU architecture"

COMMENT =		classic Minecraft client written in C

V =			1.3.7
PKGNAME =		classicube-${V}

DIST_TUPLE +=		github ClassiCube ClassiCube ${V} .

CATEGORIES =		games

MAINTAINER =		izzy Meyer <izder456@disroot.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		GL X11 Xi c execinfo pthread

# dlopen'd
WANTLIB +=		openal curl

FIX_CRLF_FILES =	src/Logger.c

COMPILER =		base-clang ports-gcc base-gcc
COMPILER_LANGS =	c

# Needed for downloading assets and sound support at runtime
LIB_DEPENDS =		net/curl \
			audio/openal
RUN_DEPENDS =		devel/desktop-file-utils

USE_GMAKE =		Yes

NO_TEST =		Yes

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
