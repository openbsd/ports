COMMENT =		GNU Backgammon

V =			1.07.001
DISTNAME =		gnubg-release-$V-sources
PKGNAME =		gnubg-$V
REVISION =		4

CATEGORIES =		games x11

HOMEPAGE =		http://gnubg.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += GL GLU X11 X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject canberra
WANTLIB += canberra-gtk3 crypto curl curses dbus-1 drm epoxy execinfo
WANTLIB += expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gmp gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl jpeg
WANTLIB += ltdl m nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_quictls
WANTLIB += ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1
WANTLIB += png readline sqlite3 ssl util vorbis vorbisfile xcb
WANTLIB += xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-render xcb-shm
WANTLIB += xcb-sync xcb-xfixes xshmfence z

SITES =			https://ftp.gnu.org/gnu/gnubg/

MODULES =		lang/python

BUILD_DEPENDS =		devel/gettext,-tools \
			math/cglm

LIB_DEPENDS =		audio/libcanberra,-gtk3 \
			databases/sqlite3 \
			devel/gmp \
			net/curl

RUN_DEPENDS =		x11/gtk+4,-guic \
			devel/desktop-file-utils

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--disable-cputest \
			--with-gtk3

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
