# $OpenBSD: Makefile,v 1.11 2014/09/21 13:03:56 ajacoutot Exp $

COMMENT=		initial-setup firstboot-like tool

GNOME_PROJECT=		gnome-initial-setup
GNOME_VERSION=		3.12.1
REVISION=		1

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt accountsservice atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject crack dbus-1
WANTLIB += dbus-glib-1 enchant expat ffi fontconfig freetype gbm
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gdm geoclue gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 goa-1.0 goa-backend-1.0
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 gweather-3
WANTLIB += harfbuzz harfbuzz-icu ibus-1.0 icudata icui18n icuuc
WANTLIB += javascriptcoregtk-3.0 jpeg json-glib-1.0 m orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png polkit-gobject-1 pthread pthread-stubs pwquality
WANTLIB += rest-0.7 secret-1 soup-2.4 soup-gnome-2.4 sqlite3 stdc++
WANTLIB += telepathy-glib webkitgtk-3.0 webp xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z

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
