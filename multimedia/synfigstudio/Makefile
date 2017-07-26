# $OpenBSD: Makefile,v 1.15 2017/07/26 22:45:27 sthen Exp $

COMMENT =		2D animation software studio
BROKEN-alpha =		[keyframe_lock_past_on_icon.png] Bus error (core dumped)
BROKEN-hppa =		Illegal instruction (core dumped)
BROKEN-sparc64 =	terminate called after throwing an instance of 'synfig::Exception::IDNotFound'

V =			1.0.1
DISTNAME =		synfigstudio-$V
API_V =			1.0
REVISION =		4

SHARED_LIBS +=  synfigapp                 1.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		http://www.synfig.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Half ICE Iex IexMath IlmImf IlmThread Imath Magick++-6.Q16
WANTLIB += MagickCore-6.Q16 MagickWand-6.Q16 SM X11 Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xt atk-1.0 atk-bridge-2.0 atkmm-1.6 atspi bz2 c cairo
WANTLIB += cairo-gobject cairomm-1.0 db dbus-1 djvulibre epoxy
WANTLIB += expat ffi fftw3 fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 gtkmm-3.0 harfbuzz
WANTLIB += jack jbig jpeg lcms2 ltdl lzma m mlt mlt++ openjp2
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre
WANTLIB += pixman-1 png pthread pthread-stubs sigc-2.0 synfig
WANTLIB += tiff webp xcb xcb-render xcb-shm xml++-2.6 xml2 z ${COMPILER_LIBCXX}

MASTER_SITES=		http://download.tuxfamily.org/synfig/releases/${V}/

MODULES =		devel/gettext \
			textproc/intltool

# c++11
COMPILER =		gcc

BUILD_DEPENDS =		devel/etl>=0.04.19
RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic
LIB_DEPENDS =		multimedia/synfig>=1.0.1 \
			x11/gtk3mm

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-update-mimedb
CONFIGURE_ENV =		CXXFLAGS="-std=c++11"

SUBST_VAR +=		API_v

.include <bsd.port.mk>
