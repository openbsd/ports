COMMENT =		complete front-end for MPlayer and MPV

CATEGORIES =		multimedia x11
GH_ACCOUNT =     	smplayer-dev
GH_PROJECT =     	smplayer
GH_TAGNAME =     	v24.5.0

HOMEPAGE =		https://www.smplayer.info/

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2 (docs/en/gpl.html)
PERMIT_PACKAGE =	Yes

WANTLIB += 		${COMPILER_LIBCXX}
WANTLIB += 		GL Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += 		Qt5Xml X11 Xext c m pthread z

MODULES =		x11/qt5
RUN_DEPENDS =		devel/desktop-file-utils \
			mpv-*|mplayer->=20090708:multimedia/mpv \
			www/yt-dlp \
			x11/gtk+4,-guic \
			x11/qt5/qtdeclarative

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		src/smplayer

MAKE_FLAGS =		QMAKE=${MODQT_QMAKE} \
			LRELEASE=${MODQT_LRELEASE}

.include <bsd.port.mk>
