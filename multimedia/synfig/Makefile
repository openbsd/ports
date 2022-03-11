BROKEN-powerpc =	segfault in multi-threaded mode, synfigstudio can't be built
BROKEN-powerpc64 =	segfault in multi-threaded mode, synfigstudio can't be built

COMMENT =		2D animation software

V=			1.2.1
DISTNAME =		synfig-$V
API_V =			1.0
REVISION =		8

SHARED_LIBS +=  synfig                    2.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		https://www.synfig.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += ICE Iex-3_1 OpenEXR-3_1 OpenEXRCore-3_1 OpenEXRUtil-3_1
WANTLIB += IlmThread-3_1 Imath-3_1 Magick++-6.Q16 MagickCore-6.Q16
WANTLIB += MagickWand-6.Q16 SM X11 Xext Xrender Xt aom boost_chrono-mt
WANTLIB += boost_filesystem boost_program_options-mt boost_system
WANTLIB += bz2 c cairo dav1d de265 djvulibre expat ffi fftw3 fontconfig
WANTLIB += freetype fribidi gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 harfbuzz heif iconv
WANTLIB += intl jasper jbig jpeg lcms lcms2 ltdl lzma m mlt mlt++
WANTLIB += mng openjp2 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png raw_r sigc-2.0 tiff webp webpdemux webpmux
WANTLIB += x265 xcb xcb-render xcb-shm xml++-2.6 xml2 z zstd

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=synfig/}

# c++11
COMPILER =		base-clang ports-gcc

MODULES =		textproc/intltool

BUILD_DEPENDS =		devel/etl>=1.2.1 \
			devel/gettext,-tools

LIB_DEPENDS =		archivers/xz \
			devel/boost \
			devel/libtool,-ltdl \
			devel/pango \
			graphics/ImageMagick \
			graphics/jasper \
			graphics/libmng \
			graphics/libraw \
			graphics/openexr \
			graphics/png \
			multimedia/aom \
			multimedia/mlt \
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
