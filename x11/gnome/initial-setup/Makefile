# $OpenBSD: Makefile,v 1.9 2014/05/13 06:06:15 ajacoutot Exp $

COMMENT=		initial-setup firstboot-like tool

GNOME_PROJECT=		gnome-initial-setup
GNOME_VERSION=		3.12.1

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt accountsservice atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject crack dbus-1
WANTLIB += dbus-glib-1 enchant expat ffi fontconfig freetype gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gdm geoclue gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 goa-1.0 goa-backend-1.0 gobject-2.0
WANTLIB += gpg-error graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 gweather-3 harfbuzz
WANTLIB += harfbuzz-icu ibus-1.0 icudata icui18n icuuc javascriptcoregtk-3.0
WANTLIB += jpeg json-glib-1.0 m orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png polkit-gobject-1 pthread
WANTLIB += pthread-stubs pwquality rest-0.7 secret-1 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 stdc++ telepathy-glib webkitgtk-3.0
WANTLIB += webp xcb xcb-render xcb-shm xml2 xslt z

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

# https://bugzilla.gnome.org/show_bug.cgi?id=728879
# (upstream will _not_ accept --disable-kerberos patches)
pre-configure:
	ln -sf /usr/bin/true ${WRKDIR}/bin/krb5-config

.include <bsd.port.mk>
