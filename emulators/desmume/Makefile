USE_WXNEEDED =	Yes

COMMENT =	Nintendo DS emulator

V =		0.9.13
DISTNAME =	desmume-${V}
EXTRACT_SUFX =	.tar.xz

CATEGORIES =	emulators

HOMEPAGE =	https://desmume.org/

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU SDL2 SoundTouch X11 Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += agg atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcap z zzip

SITES =		https://github.com/TASEmulators/desmume/releases/download/release_${V:S/./_/g}/

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	archivers/zziplib \
		audio/soundtouch \
		devel/sdl2 \
		graphics/agg \
		graphics/gdk-pixbuf2 \
		x11/gtk+2

MODULES =	textproc/intltool

COMPILER =	base-clang ports-gcc

FIX_CRLF_FILES =	desmume/src/arm_jit.cpp \
			desmume/src/utils/task.cpp

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

WRKSRC=${WRKDIST}/desmume/src/frontend/posix

.include <bsd.port.mk>
