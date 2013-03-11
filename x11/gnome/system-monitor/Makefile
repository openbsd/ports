# $OpenBSD: Makefile,v 1.35 2013/03/11 11:46:12 espie Exp $

COMMENT=	sytem monitor for GNOME

GNOME_PROJECT=	gnome-system-monitor
GNOME_VERSION=	3.6.1
REVISION=	0

CATEGORIES=	sysutils

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 X11-xcb XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 atkmm-1.6 c cairo cairo-gobject cairomm-1.0
WANTLIB += croco-0.6 drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 gtkmm-3.0 gtop-2.0 kvm
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4
WANTLIB += pcre pixman-1 png pthread pthread-stubs rsvg-2 sigc-2.0
WANTLIB += startup-notification-1 stdc++ wnck-3 xcb xcb-aux xcb-render
WANTLIB += xcb-shm xml2 z
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz icudata
WANTLIB += icule icuuc

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

RUN_DEPENDS=	x11/gnome/icon-theme
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	devel/libgtop2>=2.28.3p23 \
		devel/libwnck3 \
		x11/gnome/librsvg \
		x11/gtk3mm

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS= yelp

CONFIGURE_ARGS=	--disable-systemd

.include <bsd.port.mk>
