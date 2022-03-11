COMMENT =		emulator for Nintendo Entertainment System

V =			2.5.0
DISTNAME =		fceux-${V}
CATEGORIES =		emulators games

HOMEPAGE =		https://fceux.com/web/home.html

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=fceultra/}

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB}
WANTLIB += avcodec avformat avutil GL GLU Qt5Core
WANTLIB += Qt5Gui Qt5OpenGL Qt5Widgets SDL2
WANTLIB += swresample swscale c m minizip x264 x265 z

COMPILER =		base-clang ports-gcc base-gcc

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		archivers/minizip \
			devel/sdl2 \
			graphics/ffmpeg \
			multimedia/x264

MODULES =		devel/cmake \
			lang/lua \
			x11/qt5

NO_TEST =		Yes

SUBST_VARS +=		HOMEPAGE V

post-extract:
	chmod +x ${WRKSRC}/scripts/genGitHdr.sh

pre-configure:
	${SUBST_CMD} ${WRKDIST}/fceux.desktop ${WRKDIST}/scripts/genGitHdr.sh

post-install:
	rm ${PREFIX}/man/man6/fceux-net-server.6

.include <bsd.port.mk>
