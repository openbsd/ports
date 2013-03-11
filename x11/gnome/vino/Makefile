# $OpenBSD: Makefile,v 1.51 2013/03/11 11:46:12 espie Exp $

COMMENT=	GNOME desktop sharing server

GNOME_PROJECT=	vino
GNOME_VERSION=	3.6.2
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	https://live.gnome.org/Vino

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 atspi avahi-client avahi-common
WANTLIB += avahi-glib c cairo cairo-gobject dbus-1 dbus-glib-1
WANTLIB += drm expat ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += gpg-error gthread-2.0 gtk-3 harfbuzz hogweed icudata
WANTLIB += icule icuuc jpeg m nettle notify p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs secret-1 soup-2.4 stdc++ tasn1 telepathy-glib
WANTLIB += xcb xcb-render xcb-shm xml2 z

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
