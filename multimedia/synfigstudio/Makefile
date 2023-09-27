BROKEN-alpha =		[keyframe_lock_past_on_icon.png] Bus error (core dumped)
BROKEN-hppa =		Illegal instruction (core dumped)
BROKEN-sparc64 =	terminate called after throwing an instance of 'synfig::Exception::IDNotFound'

COMMENT =		2D animation software studio

V =			1.5.1
DISTNAME =		synfigstudio-$V
API_V =			0.0
REVISION =		3

SHARED_LIBS +=  synfigapp                 3.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		https://www.synfig.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Iex-3_2 IlmThread-3_2 Imath-3_1
WANTLIB += Magick++-6.Q16 MagickCore-6.Q16 MagickWand-6.Q16 OpenEXR-3_2
WANTLIB += OpenEXRCore-3_2 OpenEXRUtil-3_2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xt aom atk-1.0 atk-bridge-2.0 atkmm-1.6 avcodec
WANTLIB += avformat avutil bz2 c cairo cairo-gobject cairomm-1.0
WANTLIB += crypto dav1d db djvulibre epoxy execinfo expat deflate
WANTLIB += ffi fftw3 fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gsm gtk-3 gtkmm-3.0 harfbuzz
WANTLIB += heif iconv intl jack jasper jbig jpeg lcms2 ltdl lzma
WANTLIB += m mlt++-7 mlt-7 mp3lame ogg openjp2 opus pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre2-8 pixman-1
WANTLIB += png raw_r sigc-2.0 speex ssl swresample swscale synfig
WANTLIB += theoradec theoraenc tiff vorbis vorbisenc vpx webp
WANTLIB += webpdemux webpmux x264 x265 xcb xcb-render xcb-shm
WANTLIB += xml++-2.6 xml2 xvidcore z zstd atspi dbus-1 sharpyuv


SITES=		https://github.com/synfig/synfig/releases/download/v${V}/

MODULES =		textproc/intltool

# c++11
COMPILER =		base-clang ports-gcc

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
