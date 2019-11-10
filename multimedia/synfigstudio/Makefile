# $OpenBSD: Makefile,v 1.25 2019/11/10 15:32:56 ajacoutot Exp $

COMMENT =		2D animation software studio
BROKEN-alpha =		[keyframe_lock_past_on_icon.png] Bus error (core dumped)
BROKEN-hppa =		Illegal instruction (core dumped)
BROKEN-sparc64 =	terminate called after throwing an instance of 'synfig::Exception::IDNotFound'

V =			1.2.1
DISTNAME =		synfigstudio-$V
API_V =			1.0
REVISION =		3

SHARED_LIBS +=  synfigapp                 2.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		https://www.synfig.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Half-2_4 ICE Iex-2_4 IexMath-2_4
WANTLIB += IlmImf-2_4 IlmThread-2_4 Imath-2_4 Magick++-6.Q16 MagickCore-6.Q16
WANTLIB += MagickWand-6.Q16 SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atkmm-1.6 bz2 c cairo cairo-gobject cairomm-1.0 db
WANTLIB += djvulibre epoxy expat ffi fftw3 fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4
WANTLIB += glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 gtkmm-3.0 harfbuzz iconv intl jack
WANTLIB += jasper jbig jpeg lcms2 ltdl lzma m mlt mlt++ openjp2
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre
WANTLIB += pixman-1 png raw_r sigc-2.0 synfig tiff webp webpmux
WANTLIB += xcb xcb-render xcb-shm xml++-2.6 xml2 z

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

SUBST_VAR +=		API_v

.include <bsd.port.mk>
