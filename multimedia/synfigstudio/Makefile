BROKEN-alpha =		[keyframe_lock_past_on_icon.png] Bus error (core dumped)
BROKEN-hppa =		Illegal instruction (core dumped)
BROKEN-sparc64 =	terminate called after throwing an instance of 'synfig::Exception::IDNotFound'

COMMENT =		2D animation software studio

V =			1.5.1
DISTNAME =		synfigstudio-$V
API_V =			0.0
REVISION =		5

SHARED_LIBS +=  synfigapp                 3.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		https://www.synfig.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Iex-3_2 IlmThread-3_2 Imath-3_1
WANTLIB += Magick++-6.Q16 MagickCore-6.Q16 MagickWand-6.Q16 OpenEXR-3_2
WANTLIB += OpenEXRCore-3_2 OpenEXRUtil-3_2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xt aom atk-1.0 atk-bridge-2.0 atkmm-1.6 atspi
WANTLIB += avcodec avformat avutil bz2 c cairo cairo-gobject cairomm-1.0
WANTLIB += crypto dav1d db dbus-1 deflate djvulibre epoll-shim
WANTLIB += epoxy execinfo expat ffi fftw3 fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4
WANTLIB += glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gsm gtk-3 gtkmm-3.0 harfbuzz heif iconv intl jack jasper
WANTLIB += jbig jpeg lcms2 ltdl lzma m mlt++-7 mlt-7 mp3lame ogg
WANTLIB += openjp2 opus pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 pcre2-8 pixman-1 png raw_r sharpyuv sigc-2.0
WANTLIB += speex ssl swresample swscale synfig theoradec theoraenc
WANTLIB += tiff vorbis vorbisenc vpx wayland-client wayland-cursor
WANTLIB += wayland-egl webp webpdemux webpmux x264 x265 xcb xcb-render
WANTLIB += xcb-shm xkbcommon xml++-2.6 xml2 xvidcore z

SITES=		https://github.com/synfig/synfig/releases/download/v${V}/

MODULES =		textproc/intltool

# c++11
COMPILER =		base-clang ports-gcc
CXXFLAGS_base-clang =	-std=gnu++14

BUILD_DEPENDS =		devel/etl>=${V}

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic

LIB_DEPENDS =		multimedia/synfig>=${V} \
			graphics/libraw \
			graphics/jasper \
			x11/gtk3mm

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-update-mimedb

SUBST_VARS +=		API_V

.include <bsd.port.mk>
