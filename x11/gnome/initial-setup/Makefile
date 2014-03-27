# $OpenBSD: Makefile,v 1.5 2014/03/27 19:41:05 ajacoutot Exp $

COMMENT=		initial-setup firstboot-like tool

GNOME_PROJECT=		gnome-initial-setup
GNOME_VERSION=		3.12.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt accountsservice asn1
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += com_err crack crypto dbus-1 dbus-glib-1 enchant expat
WANTLIB += ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gdm geoclue gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += goa-1.0 goa-backend-1.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gweather-3 harfbuzz harfbuzz-icu heimbase ibus-1.0 icudata
WANTLIB += icui18n icuuc javascriptcoregtk-3.0 jpeg json-glib-1.0 krb5
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png polkit-gobject-1 pthread pthread-stubs pwquality
WANTLIB += rest-0.7 roken secret-1 soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB += stdc++ telepathy-glib webkitgtk-3.0 webp wind xcb xcb-render
WANTLIB += xcb-shm xml2 xslt z orc-0.4

MODULES=		x11/gnome \
			devel/dconf \
			devel/gettext

LIB_DEPENDS=		inputmethods/ibus \
			security/libpwquality \
			x11/gnome/desktop \
			x11/gnome/gdm \
			x11/gnome/libgweather \
			x11/gnome/online-accounts

# gnome-welcome-tour
RUN_DEPENDS +=		x11/gnome/getting-started-docs \
			x11/gnome/yelp

# share/polkit-1/rules.d/20-gnome-initial-setup.rules
RUN_DEPENDS +=		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-initial-setup

.include <bsd.port.mk>
