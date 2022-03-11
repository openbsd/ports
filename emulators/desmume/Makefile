USE_WXNEEDED =	Yes

COMMENT =	Nintendo DS emulator

DISTNAME =	desmume-0.9.11
REVISION =	9

CATEGORIES =	emulators

HOMEPAGE =	https://desmume.org/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += agg c m pthread ${LIBCXX} z GL GLU X11 Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += fontconfig freetype gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gthread-2.0 SDL SoundTouch
WANTLIB += atk-1.0 cairo gdk-x11-2.0 gtk-x11-2.0 iconv intl
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 zzip

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=desmume/}

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	archivers/zziplib \
		audio/soundtouch \
		devel/sdl \
		graphics/agg \
		graphics/gdk-pixbuf2 \
		x11/gtk+2

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

MODULES =	textproc/intltool


COMPILER =	base-clang ports-gcc

CONFIGURE_STYLE =	gnu
FIX_CRLF_FILES =	src/MMU_timing.h \
			src/path.h \
			src/utils/AsmJit/core/stringbuilder.h

.include <bsd.port.mk>
