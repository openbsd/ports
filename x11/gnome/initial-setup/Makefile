# $OpenBSD: Makefile,v 1.28 2015/10/23 07:55:32 ajacoutot Exp $

COMMENT=		initial-setup firstboot-like tool

GNOME_PROJECT=		gnome-initial-setup
GNOME_VERSION=		3.18.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm
WANTLIB += accountsservice atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject com_err crack crypto dbus-1 dbus-glib-1
WANTLIB += drm enchant epoxy estdc++ expat ffi fontconfig freetype
WANTLIB += gbm gcrypt gdk-3 gdk_pixbuf-2.0 gdm geocode-glib gio-2.0
WANTLIB += glapi glib-2.0 gmodule-2.0 gnome-desktop-3 goa-1.0
WANTLIB += goa-backend-1.0 gobject-2.0 gpg-error graphite2 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gweather-3 harfbuzz harfbuzz-icu hyphen ibus-1.0 icudata
WANTLIB += icui18n icuuc javascriptcoregtk-4.0 jpeg json-glib-1.0
WANTLIB += lzma m notify orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png polkit-gobject-1 pthread pthread-stubs
WANTLIB += pwquality rest-0.7 secret-1 soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 stdc++ telepathy-glib webkit2gtk-4.0 webp xcb
WANTLIB += xcb-dri2 xcb-glx xcb-render xcb-shape xcb-shm xcb-xfixes
WANTLIB += xml2 xslt z
WANTLIB += heimdal/lib/heimsqlite

MODULES=		devel/dconf \
			devel/gettext \
			security/heimdal \
			x11/gnome

LIB_DEPENDS=		inputmethods/ibus \
			security/libpwquality \
			x11/gnome/desktop \
			x11/gnome/gdm \
			x11/gnome/libgweather \
			x11/gnome/online-accounts

BUILD_DEPENDS=		geo/geoclue2
RUN_DEPENDS=		geo/geoclue2

# gnome-welcome-tour
RUN_DEPENDS +=		x11/gnome/getting-started-docs

# share/polkit-1/rules.d/20-gnome-initial-setup.rules
RUN_DEPENDS +=		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-initial-setup

.include <bsd.port.mk>
