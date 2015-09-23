# $OpenBSD: Makefile,v 1.5 2015/09/23 09:41:18 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		2D animation software
REVISION =		0

V=			1.0.1
DISTNAME =		synfig-$V
API_V =			1.0

SHARED_LIBS +=  synfig                    1.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		http://www.synfig.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Half ICE Iex IexMath IlmImf IlmThread Imath Magick++
WANTLIB += MagickCore MagickWand SM X11 Xext Xrender Xt boost_program_options-mt
WANTLIB += bz2 c cairo djvulibre expat ffi fftw3 fontconfig freetype
WANTLIB += glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 harfbuzz jasper jbig jpeg lcms2 ltdl lzma
WANTLIB += m mng pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs sigc-2.0 tiff webp
WANTLIB += wmf wmflite xcb xcb-render xcb-shm xml++-2.6 xml2 z
WANTLIB += boost_chrono-mt boost_filesystem boost_system gio-2.0
WANTLIB += giomm-2.4 mlt mlt++ stdc++

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
