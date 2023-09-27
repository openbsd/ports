BROKEN-powerpc =	segfault in multi-threaded mode, synfigstudio can't be built
BROKEN-powerpc64 =	segfault in multi-threaded mode, synfigstudio can't be built

COMMENT =		2D animation software

V=			1.5.1
DISTNAME =		synfig-$V
API_V =			1.0
REVISION =		2

SHARED_LIBS +=  synfig                    3.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		https://www.synfig.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Iex-3_2 IlmThread-3_2 Imath-3_1
WANTLIB += Magick++-6.Q16 MagickCore-6.Q16 MagickWand-6.Q16 OpenEXR-3_2
WANTLIB += OpenEXRCore-3_2 OpenEXRUtil-3_2 SM X11 Xext Xt aom
WANTLIB += avcodec avformat avutil bz2 c crypto dav1d sharpyuv djvulibre
WANTLIB += expat ffi fftw3 fontconfig freetype fribidi gio-2.0
WANTLIB += giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gsm harfbuzz heif iconv intl jasper jbig
WANTLIB += jpeg lcms lcms2 ltdl lzma m mlt++-7 mlt-7 mng mp3lame
WANTLIB += ogg openjp2 opus pcre2-8 png raw_r sigc-2.0 speex ssl
WANTLIB += swresample swscale theoradec theoraenc tiff vorbis
WANTLIB += vorbisenc vpx webp webpdemux webpmux x264 x265 xcb
WANTLIB += xml++-2.6 xml2 xvidcore z zstd deflate

SITES=		https://github.com/synfig/synfig/releases/download/v${V}/

# c++11
COMPILER =		base-clang ports-gcc

MODULES =		textproc/intltool

BUILD_DEPENDS =		devel/boost \
			devel/etl>=${V} \
			devel/gettext,-tools

LIB_DEPENDS =		archivers/xz \
			devel/libtool,-ltdl \
			graphics/ImageMagick \
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
AUTOCONF_VERSION =	2.69
CONFIGURE_ARGS =	--without-included-ltdl

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/synfig

SUBST_VARS +=		API_V

pre-configure:
	${SUBST_CMD} ${WRKDIST}/src/synfig/main.cpp

post-install:
	rm ${PREFIX}/lib/synfig/modules/*.{a,la}

.include <bsd.port.mk>
