# $OpenBSD: Makefile,v 1.38 2011/10/18 08:16:57 jasper Exp $

COMMENT=	GNOME desktop sharing server

GNOME_PROJECT=	vino
GNOME_VERSION=	3.2.1

CATEGORIES=	net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst Xxf86vm
WANTLIB += atk-1.0 avahi-client avahi-common avahi-glib c cairo
WANTLIB += cairo-gobject dbus-1 dbus-glib-1 drm expat ffi fontconfig
WANTLIB += freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gnome-keyring gnutls gobject-2.0 gpg-error
WANTLIB += gthread-2.0 gtk-3 hogweed jpeg m nettle notify
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs soup-2.4 tasn1 telepathy-glib
WANTLIB += xcb xcb-render xcb-shm xml2 z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libnotify \
		devel/libsoup \
		net/avahi \
		net/telepathy/telepathy-glib \
		security/gnutls \
		x11/gnome/libgnome-keyring

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS= yelp

CONFIGURE_ARGS=	--with-gnome-keyring \
		--with-avahi \
		--enable-http-server=no \
		--with-libnotify \
		--with-telepathy \
		--disable-ipv6


MODGNOME_CPPFLAGS=	-I${X11BASE}/include

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/vino

.include <bsd.port.mk>
