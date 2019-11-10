# $OpenBSD: Makefile,v 1.30 2019/11/10 15:32:56 ajacoutot Exp $

COMMENT =		2D animation software

V=			1.2.1
DISTNAME =		synfig-$V
API_V =			1.0
REVISION =		4

SHARED_LIBS +=  synfig                    2.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		https://www.synfig.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Half-2_4 ICE Iex-2_4 IexMath-2_4
WANTLIB += IlmImf-2_4 IlmThread-2_4 Imath-2_4 Magick++-6.Q16 MagickCore-6.Q16
WANTLIB += MagickWand-6.Q16 SM X11 Xext Xrender Xt boost_chrono-mt
WANTLIB += boost_filesystem boost_program_options-mt boost_system
WANTLIB += boost_system-mt bz2 c cairo djvulibre expat ffi fftw3
WANTLIB += fontconfig freetype fribidi gio-2.0 giomm-2.4 glib-2.0
WANTLIB += glibmm-2.4 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += harfbuzz iconv intl jasper jbig jpeg lcms lcms2 ltdl
WANTLIB += lzma m mlt mlt++ mng openjp2 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png raw_r sigc-2.0 tiff
WANTLIB += webp webpmux xcb xcb-render xcb-shm xml++-2.6 xml2
WANTLIB += z

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
			graphics/libmng \
			graphics/openexr \
			graphics/libraw \
			graphics/jasper \
			graphics/png \
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
