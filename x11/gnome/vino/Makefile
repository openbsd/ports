# $OpenBSD: Makefile,v 1.29 2011/09/12 12:04:20 jasper Exp $

COMMENT=	GNOME desktop sharing server

GNOME_PROJECT=	vino
GNOME_VERSION=	3.0.3

REVISION=	0

CATEGORIES=	net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst Xxf86vm
WANTLIB += atk-1.0 avahi-client avahi-common avahi-glib c cairo
WANTLIB += cairo-gobject dbus-1 dbus-glib-1 drm expat fontconfig
WANTLIB += freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gnome-keyring gnutls gobject-2.0 gpg-error
WANTLIB += gthread-2.0 gtk-3 hogweed jpeg m nettle notify pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs soup-2.4 tasn1 telepathy-glib xcb xcb-render
WANTLIB += xcb-shm xml2 z

LIB_DEPENDS=	devel/libnotify \
		devel/libsoup \
		devel/libunique3 \
		net/avahi \
		net/telepathy/telepathy-glib \
		security/gnutls \
		x11/gnome/libgnome-keyring

DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-gnome-keyring \
		--with-avahi \
		--enable-http-server=no \
		--with-libnotify \
		--with-telepathy \
		--disable-ipv6
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/vino

.include <bsd.port.mk>
