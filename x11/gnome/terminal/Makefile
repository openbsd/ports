# $OpenBSD: Makefile,v 1.133 2015/04/14 06:55:01 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME terminal

GNOME_PROJECT=	gnome-terminal
GNOME_VERSION=	3.16.1

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 dconf uuid
WANTLIB += expat ffi fontconfig freetype gconf-2 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs util vte-2.91 xcb xcb-render
WANTLIB += xcb-shm z nautilus-extension
WANTLIB += epoxy gmp gnutls hogweed nettle p11-kit tasn1

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

BUILD_DEPENDS=	devel/gsettings-desktop-schemas \
		x11/gnome/shell
RUN_DEPENDS=	devel/gsettings-desktop-schemas

LIB_DEPENDS=	devel/gconf2 \
		devel/vte3>=0.38 \
		sysutils/e2fsprogs>=1.42.7 \
		x11/gnome/nautilus

MODGNOME_TOOLS=	desktop-file-utils vala yelp

pre-configure:
# XXX cc1: error: unrecognized command line option
	perl -pi -e 's,-Wno-unused-but-set-variable,,; \
		s,-Wno-suggest-attribute=format,,;' \
		${WRKSRC}/src/Makefile.in

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.{a,la}

.include <bsd.port.mk>
