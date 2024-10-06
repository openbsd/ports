BROKEN-alpha =		[keyframe_lock_past_on_icon.png] Bus error (core dumped)
BROKEN-hppa =		Illegal instruction (core dumped)
BROKEN-sparc64 =	terminate called after throwing an instance of 'synfig::Exception::IDNotFound'

COMMENT =		2D animation software studio

V =			1.5.3
DISTNAME =		synfigstudio-$V
API_V =			0.0
REVISION =		0

SHARED_LIBS +=  synfigapp                 3.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		https://www.synfig.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Iex-3_3 IlmThread-3_3 Imath-3_1
WANTLIB += Magick++-6.Q16 MagickCore-6.Q16 MagickWand-6.Q16 OpenEXR-3_3
WANTLIB += OpenEXRCore-3_3 OpenEXRUtil-3_3 SM X11 X11-xcb Xau
WANTLIB += Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt aom atk-1.0 atk-bridge-2.0 atkmm-1.6
WANTLIB += atspi avcodec avformat avutil bz2 c cairo cairo-gobject
WANTLIB += cairomm-1.0 crypto dav1d db dbus-1 deflate djvulibre
WANTLIB += drm epoll-shim epoxy execinfo expat ffi fftw3 fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0
WANTLIB += giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gsm gtk-3 gtkmm-3.0 harfbuzz heif iconv intl
WANTLIB += jack jasper jbig jpeg lcms2 ltdl lzma m mlt++-7 mlt-7
WANTLIB += mp3lame ogg openjp2 opus pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 pcre2-8 pixman-1 png raw_r sharpyuv sigc-2.0
WANTLIB += speex ssl swresample swscale synfig theoradec theoraenc
WANTLIB += tiff va va-drm va-x11 vorbis vorbisenc vpx wayland-client
WANTLIB += wayland-cursor wayland-egl webp webpdemux webpmux x264
WANTLIB += x265 xcb xcb-dri3 xcb-render xcb-shm xkbcommon xml++-2.6
WANTLIB += xml2 xvidcore z

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
