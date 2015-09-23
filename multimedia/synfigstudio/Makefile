# $OpenBSD: Makefile,v 1.6 2015/09/23 09:41:18 ajacoutot Exp $

COMMENT =		2D animation software studio
BROKEN-alpha =		[keyframe_lock_past_on_icon.png] Bus error (core dumped)
BROKEN-hppa =		Illegal instruction (core dumped)

V =			1.0.1
DISTNAME =		synfigstudio-$V
API_V =			1.0

SHARED_LIBS +=  synfigapp                 1.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		http://www.synfig.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Half ICE Iex IlmImf IlmThread Imath Magick++ MagickCore
WANTLIB += MagickWand SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atkmm-1.6 atspi bz2 c cairo cairo-gobject cairomm-1.0
WANTLIB += db dbus-1 djvulibre epoxy expat ffi fftw3 fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4
WANTLIB += glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 gtkmm-3.0 harfbuzz jack jasper jbig
WANTLIB += jpeg lcms2 ltdl lzma m mlt mlt++ pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pcre pixman-1 png pthread
WANTLIB += pthread-stubs sigc-2.0 stdc++ synfig tiff webp wmf-0.2
WANTLIB += wmflite-0.2 xcb xcb-render xcb-shm xml++-2.6 xml2 z

MASTER_SITES=		http://download.tuxfamily.org/synfig/releases/${V}/

MODULES =		devel/gettext \
			textproc/intltool

# c++11
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c++

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
