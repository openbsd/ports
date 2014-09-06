# $OpenBSD: Makefile,v 1.1.1.1 2014/09/06 07:03:52 bentley Exp $

COMMENT =		2D animation software

DISTNAME =		synfig-0.64.1

SHARED_LIBS +=  synfig                    0.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		http://www.synfig.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Half ICE Iex IlmImf IlmThread Imath Magick++ MagickCore
WANTLIB += MagickWand SM X11 Xext Xrender Xt boost_program_options-mt
WANTLIB += bz2 c cairo djvulibre expat ffi fftw3 fontconfig freetype
WANTLIB += glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 harfbuzz jasper jbig jpeg lcms2 ltdl lzma
WANTLIB += m mng pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs sigc-2.0 stdc++ tiff webp
WANTLIB += wmf wmflite xcb xcb-render xcb-shm xml++-2.6 xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=synfig/}

MODULES =		devel/gettext
BUILD_DEPENDS =		devel/etl
LIB_DEPENDS =		archivers/xz \
			devel/boost \
			devel/libtool,-ltdl \
			devel/pango \
			graphics/ImageMagick \
			graphics/djvulibre \
			graphics/ilmbase \
			graphics/jasper \
			graphics/jbigkit \
			graphics/lcms2 \
			graphics/libwmf \
			graphics/libmng \
			graphics/openexr \
			graphics/tiff \
			math/fftw3 \
			textproc/libxml++

# .libs/libsynfig.so.0.0: undefined reference to `lt_libltdlc_LTX_preloaded_symbols'
USE_LIBTOOL=		gnu

CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_STYLE =	gnu

pre-configure:
	${SUBST_CMD} ${WRKDIST}/src/synfig/main.cpp

.include <bsd.port.mk>
