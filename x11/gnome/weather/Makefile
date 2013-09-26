# $OpenBSD: Makefile,v 1.8 2013/09/26 10:59:59 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		weather application for GNOME

GNOME_PROJECT=		gnome-weather
GNOME_VERSION=		3.10.0

HOMEPAGE=		https://live.gnome.org/Design/Apps/Weather

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

BUILD_DEPENDS=		x11/gnome/gjs \
			x11/gnome/libgweather
RUN_DEPENDS=		x11/gnome/gjs

LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS=		gi
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS=		--disable-static

post-install:
	rm ${PREFIX}/lib/org.gnome.Weather.Application/libgd.la

.include <bsd.port.mk>
