# $OpenBSD: Makefile,v 1.56 2013/09/12 12:47:32 ajacoutot Exp $

COMMENT=		GNOME desktop sharing server

GNOME_PROJECT=		vino
GNOME_VERSION=		3.8.1
REVISION=		1

CATEGORIES=		net

HOMEPAGE=		https://live.gnome.org/Vino

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xtst atk-1.0 atk-bridge-2.0
WANTLIB += atspi avahi-client avahi-common avahi-glib c cairo
WANTLIB += cairo-gobject dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gnutls gobject-2.0 gpg-error graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz hogweed jpeg m nettle notify
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs secret-1 soup-2.4
WANTLIB += sqlite3 tasn1 telepathy-glib xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/libnotify \
			devel/libsoup \
			net/avahi \
			net/telepathy/telepathy-glib \
			security/gnutls \
			x11/gnome/libsecret \
			x11/gtk+3

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/vino

.include <bsd.port.mk>
