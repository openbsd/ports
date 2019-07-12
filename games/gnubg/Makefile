# $OpenBSD: Makefile,v 1.9 2019/07/12 20:46:18 sthen Exp $

COMMENT =		GNU Backgammon
V =			1.05.002
DISTNAME =		gnubg-release-$V-sources
PKGNAME =		gnubg-$V
CATEGORIES =		games x11
HOMEPAGE =		http://gnubg.org/
REVISION =		6

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += GL GLU ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm atk-1.0 c
WANTLIB += cairo canberra canberra-gtk crypto curl drm expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdkglext-x11-1.0 gio-2.0 glapi glib-2.0 gmodule-2.0 gmp
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += gtkglext-x11-1.0 harfbuzz iconv intl ltdl m ncurses nghttp2
WANTLIB += ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pangox-1.0 pcre
WANTLIB += pixman-1 png pthread readline sqlite3 ssl util
WANTLIB += vorbis vorbisfile xcb xcb-dri2 xcb-glx xcb-render xcb-shm z

MASTER_SITES =		http://gnubg.org/media/sources/

MODULES =		lang/python
BUILD_DEPENDS =		devel/gettext,-tools
LIB_DEPENDS =		audio/libcanberra,-gtk \
			databases/sqlite3 \
			devel/gettext,-runtime \
			devel/glib2 \
			devel/gmp \
			devel/pango \
			graphics/png \
			net/curl \
			x11/gtkglext
RUN_DEPENDS =		x11/gtk+3,-guic \
			devel/desktop-file-utils

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-cputest
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if ${MACHINE_ARCH} == amd64
CONFIGURE_ARGS +=	--enable-simd=sse2
.else
CONFIGURE_ARGS +=	--enable-simd=no
.endif

FONT_SANS =		${X11BASE}/lib/X11/fonts/TTF/DejaVuSans.ttf
FONT_SERIF =		${X11BASE}/lib/X11/fonts/TTF/DejaVuSerif-Bold.ttf
CFLAGS +=		-DFONT_VERA=\\\"${FONT_SANS}\\\" \
			-DFONT_VERA_SERIF_BOLD=\\\"${FONT_SERIF}\\\"

WRKDIST =		${WRKDIR}/gnubg-$V

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/gnubg/scripts/*.py
	rm -R ${PREFIX}/share/gnubg/fonts
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${FILESDIR}/gnubg.desktop ${PREFIX}/share/applications/

.include <bsd.port.mk>
