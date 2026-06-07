BROKEN-powerpc =	segfault in multi-threaded mode, synfigstudio can't be built
BROKEN-powerpc64 =	segfault in multi-threaded mode, synfigstudio can't be built

COMMENT =		2D animation software

V=			1.5.5
DISTNAME =		synfig-$V
API_V =			1.0

SHARED_LIBS +=  synfig                    3.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		https://www.synfig.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Iex-3_4 IlmThread-3_4 Imath-3_2
WANTLIB += Magick++-6.Q16 MagickCore-6.Q16 MagickWand-6.Q16 OpenEXR-3_4
WANTLIB += OpenEXRCore-3_4 OpenEXRUtil-3_4 SM SvtAv1Enc X11 X11-xcb
WANTLIB += Xext Xfixes Xt aom avcodec avformat avutil bz2 c crypto
WANTLIB += dav1d deflate djvulibre drm expat ffi fftw3 fontconfig
WANTLIB += freetype fribidi gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gsm harfbuzz heif
WANTLIB += iconv intl jbig jpeg lcms lcms2 ltdl lzma m mlt++-7
WANTLIB += mlt-7 mng mp3lame mpg123 ogg openjp2 openjph opus pcre2-8
WANTLIB += png raw_r sharpyuv sigc-2.0 speex ssl swresample swscale
WANTLIB += theoraenc tiff va va-drm va-x11 vorbis vorbisenc vpx
WANTLIB += webp webpdemux webpmux x264 x265 xcb xcb-dri3 xml++-2.6
WANTLIB += xml2 xvidcore z

SITES=			https://github.com/synfig/synfig/releases/download/v${V}/

COMPILER =		base-clang ports-gcc
CXXFLAGS_base-clang =	-std=gnu++14

MODULES =		textproc/intltool

BUILD_DEPENDS =		devel/boost \
			devel/etl>=${V} \
			devel/gettext,-tools

LIB_DEPENDS =		archivers/xz \
			devel/libtool,-ltdl \
			graphics/ImageMagick \
			graphics/ffmpeg \
			graphics/jasper \
			graphics/libmng \
			graphics/libraw \
			graphics/openexr \
			graphics/png \
			multimedia/aom \
			multimedia/mlt7 \
			textproc/libxml++

USE_GMAKE =		Yes

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.71
CONFIGURE_ARGS =	--without-included-ltdl

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/synfig

SUBST_VARS +=		API_V

DEBUG_PACKAGES = ${BUILD_PACKAGES}

pre-configure:
	${SUBST_CMD} ${WRKDIST}/src/synfig/main.cpp

post-install:
	rm ${PREFIX}/lib/synfig/modules/*.{a,la}

.include <bsd.port.mk>
