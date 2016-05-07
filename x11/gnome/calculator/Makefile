# $OpenBSD: Makefile,v 1.33 2016/05/07 17:32:57 ajacoutot Exp $

COMMENT=		GNOME desktop calculator

GNOME_PROJECT=		gnome-calculator
GNOME_VERSION=		3.20.1
REVISION=		0

CATEGORIES=		math

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gobject-2.0 graphite2 gthread-2.0 gtk-3 gtksourceview-3.0
WANTLIB += harfbuzz lzma m mpfr pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm xml2 z iconv intl soup-2.4 sqlite3

MODULES=		x11/gnome \
			devel/dconf

LIB_DEPENDS+=		devel/mpfr \
			devel/libsoup \
			x11/gtksourceview3

MODGNOME_TOOLS=		desktop-file-utils vala yelp

post-install:
	rm ${PREFIX}/lib/gnome-calculator/*.{a,la}

.include <bsd.port.mk>
