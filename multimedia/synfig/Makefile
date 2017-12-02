# $OpenBSD: Makefile,v 1.21 2017/12/02 21:39:49 juanfra Exp $

COMMENT =		2D animation software
REVISION =		9

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
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 harfbuzz iconv intl
WANTLIB += jbig jpeg lcms2 ltdl lzma m mlt mlt++ mng openjp2 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += sigc-2.0 tiff webp xcb xcb-render xcb-shm
WANTLIB += xml++-2.6 xml2 z boost_system-mt lcms ${COMPILER_LIBCXX}

MASTER_SITES=		https://download.tuxfamily.org/synfig/releases/${V}/

# c++11
COMPILER =		base-clang ports-gcc

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

# XXX crash during multimedia/synfigstudio build with default -O2
CXXFLAGS+=		-O1 -std=c++11
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
