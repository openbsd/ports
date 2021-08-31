# $OpenBSD: Makefile,v 1.28 2021/08/31 07:30:29 ajacoutot Exp $

COMMENT =		2D animation software studio
BROKEN-alpha =		[keyframe_lock_past_on_icon.png] Bus error (core dumped)
BROKEN-hppa =		Illegal instruction (core dumped)
BROKEN-sparc64 =	terminate called after throwing an instance of 'synfig::Exception::IDNotFound'

V =			1.2.1
DISTNAME =		synfigstudio-$V
API_V =			0.0
REVISION =		6

SHARED_LIBS +=  synfigapp                 2.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		https://www.synfig.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Iex-3_1 IlmThread-3_1 Imath-3_1
WANTLIB += Magick++-6.Q16 MagickCore-6.Q16 MagickWand-6.Q16 OpenEXR-3_1
WANTLIB += OpenEXRCore-3_1 OpenEXRUtil-3_1 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xt aom
WANTLIB += atk-1.0 atk-bridge-2.0 atkmm-1.6 bz2 c cairo cairo-gobject
WANTLIB += cairomm-1.0 dav1d db de265 djvulibre epoxy execinfo
WANTLIB += expat ffi fftw3 fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gtk-3 gtkmm-3.0 harfbuzz heif
WANTLIB += iconv intl jack jasper jbig jpeg lcms2 ltdl lzma m
WANTLIB += mlt mlt++ openjp2 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 pcre pixman-1 png raw_r sigc-2.0 synfig
WANTLIB += tiff webp webpdemux webpmux x265 xcb xcb-render xcb-shm
WANTLIB += xml++-2.6 xml2 z zstd

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=synfig/}

MODULES =		textproc/intltool

# c++11
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/etl>=1.2.1
RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic
LIB_DEPENDS =		multimedia/synfig>=1.2.1 \
			graphics/libraw \
			graphics/jasper \
			x11/gtk3mm

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-update-mimedb

SUBST_VARS +=		API_V

.include <bsd.port.mk>
