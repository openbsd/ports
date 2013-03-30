# $OpenBSD: Makefile,v 1.52 2013/03/30 07:16:07 ajacoutot Exp $

COMMENT=	GNOME desktop sharing server

GNOME_PROJECT=	vino
GNOME_VERSION=	3.8.0

CATEGORIES=	net

HOMEPAGE=	https://live.gnome.org/Vino

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xtst atk-1.0 atk-bridge-2.0
WANTLIB += atspi avahi-client avahi-common avahi-glib c cairo
WANTLIB += cairo-gobject dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gnutls gobject-2.0 gpg-error graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz hogweed icudata icule icuuc
WANTLIB += jpeg m nettle notify p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += secret-1 soup-2.4 sqlite3 tasn1 telepathy-glib xcb
WANTLIB += xcb-render xcb-shm xml2 z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libnotify \
		devel/libsoup \
		net/avahi \
		net/telepathy/telepathy-glib \
		security/gnutls \
		x11/gnome/libsecret \
		x11/gtk+3

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/vino

.include <bsd.port.mk>
