# $OpenBSD: Makefile,v 1.10 2016/05/06 21:39:03 sthen Exp $

COMMENT =		2D animation software
REVISION =		4

V=			1.0.1
DISTNAME =		synfig-$V
API_V =			1.0

SHARED_LIBS +=  synfig                    1.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		http://www.synfig.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Half ICE Iex IexMath IlmImf IlmThread Imath Magick++-6.Q16
WANTLIB += MagickCore-6.Q16 MagickWand-6.Q16 SM X11 Xext Xrender
WANTLIB += Xt boost_chrono-mt boost_filesystem boost_program_options-mt
WANTLIB += boost_system bz2 c cairo djvulibre expat ffi fftw3
WANTLIB += fontconfig freetype gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 harfbuzz
WANTLIB += jbig jpeg lcms2 ltdl lzma m mlt mlt++ mng openjp2 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs sigc-2.0 tiff webp xcb xcb-render xcb-shm
WANTLIB += xml++-2.6 xml2 z

MASTER_SITES=		http://download.tuxfamily.org/synfig/releases/${V}/

MODULES =		devel/gettext

# c++11
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c++

BUILD_DEPENDS =		devel/etl>=0.04.19
LIB_DEPENDS =		archivers/xz \
			devel/boost \
			devel/libtool,-ltdl \
			devel/pango \
			graphics/ImageMagick \
			graphics/libmng \
			graphics/openexr \
			multimedia/mlt \
			textproc/libxml++

# .libs/libsynfig.so.0.0: undefined reference to `lt_libltdlc_LTX_preloaded_symbols'
USE_LIBTOOL=		gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			CXXFLAGS="-std=c++11" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-included-ltdl

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/synfig

SUBST_VARS +=		API_V

pre-configure:
	${SUBST_CMD} ${WRKDIST}/src/synfig/main.cpp

post-install:
	rm ${PREFIX}/lib/synfig/modules/*.{a,la}

.include <bsd.port.mk>
