# $OpenBSD: Makefile,v 1.160 2018/06/02 12:08:24 jasper Exp $

COMMENT=	GNOME terminal

GNOME_PROJECT=	gnome-terminal
GNOME_VERSION=	3.28.2
REVISION=	0

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c
WANTLIB += cairo cairo-gobject dbus-1 dbus-glib-1 dconf epoxy
WANTLIB += expat ffi fontconfig freetype gconf-2 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz hogweed iconv
WANTLIB += idn2 intl m nautilus-extension nettle p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pcre2-8 pixman-1 png
WANTLIB += pthread tasn1 unistring uuid vte-2.91 xcb xcb-render
WANTLIB += xcb-shm z fribidi

MODULES=	devel/dconf \
		x11/gnome

BUILD_DEPENDS=	devel/gsettings-desktop-schemas \
		x11/gnome/shell
RUN_DEPENDS=	devel/gsettings-desktop-schemas

LIB_DEPENDS=	devel/gconf2 \
		devel/vte3>=0.52.2 \
		sysutils/e2fsprogs \
		x11/gnome/nautilus>=3.22.1

MODGNOME_TOOLS=	desktop-file-utils vala yelp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS +=	--enable-debug

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.{a,la}
	rm -r ${PREFIX}/lib/systemd/

.include <bsd.port.mk>
