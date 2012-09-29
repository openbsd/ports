# $OpenBSD: Makefile,v 1.47 2012/09/29 07:14:30 ajacoutot Exp $

COMMENT=	GNOME desktop sharing server

GNOME_PROJECT=	vino
GNOME_VERSION=	3.6.0

CATEGORIES=	net

HOMEPAGE=	https://live.gnome.org/Vino

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
WANTLIB += gmodule-2.0 gmp gnutls gobject-2.0 gpg-error
WANTLIB += gthread-2.0 gtk-3 hogweed jpeg m nettle notify p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs soup-2.4 stdc++ tasn1 telepathy-glib
WANTLIB += xcb xcb-render xcb-shm xml2 z atk-bridge-2.0 atspi harfbuzz
WANTLIB += icudata icule icuuc

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libnotify \
		devel/libsoup \
		net/avahi \
		net/telepathy/telepathy-glib \
		security/gnutls \
		x11/gtk+3>=3.6.0

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS=		yelp
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/vino

.include <bsd.port.mk>
