# $OpenBSD: Makefile,v 1.1.1.1 2014/09/06 07:05:10 bentley Exp $

COMMENT =		2D animation software studio

DISTNAME =		synfigstudio-0.64.1

SHARED_LIBS +=  synfigapp                 0.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		http://www.synfig.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE Magick++ MagickCore MagickWand SM X11 Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xt atk-1.0 atkmm-1.6 bz2 c cairo cairomm-1.0 djvulibre
WANTLIB += expat ffi fftw3 fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdkmm-2.4 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 gtkmm-2.4
WANTLIB += harfbuzz jasper jbig jpeg lcms2 ltdl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre pixman-1
WANTLIB += png pthread pthread-stubs sigc-2.0 stdc++ synfig tiff
WANTLIB += webp wmf-0.2 wmflite-0.2 xcb xcb-render xcb-shm
WANTLIB += xml++-2.6 xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=synfig/}

MODULES =		devel/gettext \
			textproc/intltool
BUILD_DEPENDS =		devel/etl
RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+2,-guic
LIB_DEPENDS =		multimedia/synfig \
			x11/gtk2mm

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-update-mimedb

.include <bsd.port.mk>
