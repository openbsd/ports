# $OpenBSD: Makefile,v 1.47 2013/11/19 16:16:00 jasper Exp $

COMMENT=	sytem monitor for GNOME

GNOME_PROJECT=	gnome-system-monitor
GNOME_VERSION=	3.10.2
REVISION=	0

CATEGORIES=	sysutils

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atkmm-1.6 atspi c cairo cairo-gobject cairomm-1.0 croco-0.6
WANTLIB += dbus-1 expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 gtkmm-3.0 gtop-2.0
WANTLIB += harfbuzz kvm m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pcre pixman-1 png pthread
WANTLIB += pthread-stubs rsvg-2 sigc-2.0
WANTLIB += stdc++ xcb xcb-render xcb-shm xml2 z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libgtop2>=2.28.5p2 \
		x11/gnome/librsvg \
		x11/gtk3mm

# share/polkit-1/actions/org.gnome.gnome-system-monitor.policy
RUN_DEPENDS +=	sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS= yelp

CONFIGURE_ARGS=	--disable-systemd

.include <bsd.port.mk>
