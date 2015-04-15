# $OpenBSD: Makefile,v 1.66 2015/04/15 09:40:54 ajacoutot Exp $

COMMENT=		GNOME desktop sharing server

GNOME_PROJECT=		vino
GNOME_VERSION=		3.16.0
REVISION=		1

CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xtst atk-1.0 atk-bridge-2.0
WANTLIB += atspi avahi-client avahi-common avahi-glib c cairo
WANTLIB += cairo-gobject dbus-1 dbus-glib-1 epoxy expat ffi fontconfig
WANTLIB += freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gnutls gobject-2.0 gpg-error graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz hogweed jpeg m nettle notify
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs secret-1 tasn1 telepathy-glib
WANTLIB += xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils

LIB_DEPENDS=		devel/libnotify \
			net/avahi \
			net/telepathy/telepathy-glib \
			security/gnutls \
			x11/gnome/libsecret \
			x11/gtk+3

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/vino

.include <bsd.port.mk>
