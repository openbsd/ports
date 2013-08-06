# $OpenBSD: Makefile,v 1.232 2013/08/06 19:08:15 ajacoutot Exp $

COMMENT=		GNOME session

GNOME_PROJECT=		gnome-session
GNOME_VERSION=		3.8.4

CATEGORIES=		x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xtst Xxf86vm atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 dbus-glib-1 drm
WANTLIB += execinfo expat ffi fontconfig freetype gconf-2 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ upower-glib xcb xcb-render xcb-shm xkbfile z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

BUILD_DEPENDS=	textproc/xmlto \
		x11/gnome/settings-daemon

LIB_DEPENDS=	devel/libexecinfo \
		x11/gtk+3 \
		devel/gconf2 \
		sysutils/upower \
		devel/json-glib

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

# gnome.session RequiredComponents
RUN_DEPENDS+=	x11/gnome/settings-daemon \
		x11/gnome/shell

# use for init errors, gnome-session/gsm-util.c
RUN_DEPENDS +=	x11/gnome/zenity

# defaults are set in gsettings-desktop-schema (runtime (see NEWS))
RUN_DEPENDS+=	devel/gsettings-desktop-schemas \
		fonts/cantarell-fonts \
		x11/gnome/backgrounds \
		x11/gnome/themes-standard

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

MODGNOME_CPPFLAGS=-I${X11BASE}/include
MODGNOME_LDFLAGS=-L${X11BASE}/lib

CONFIGURE_ARGS=	--disable-systemd \
		--enable-docbook-docs

.include <bsd.port.mk>
