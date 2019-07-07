# $OpenBSD: Makefile,v 1.70 2019/07/07 11:20:53 ajacoutot Exp $

COMMENT=		user interface components for GNOME

GNOME_PROJECT=		libgnomeui
GNOME_VERSION=		2.24.5
EXTRACT_SUFX=		.tar.bz2
REVISION=		13

SHARED_LIBS +=	gnomeui-2      2400.0         # .2400.2

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2
WANTLIB += atk-1.0 bonobo-2 bonobo-activation bonoboui-2 cairo canberra
WANTLIB += crypto dbus-1 dbus-glib-1 expat ffi fontconfig freetype
WANTLIB += fribidi gailutil gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gnome-2 gnome-keyring
WANTLIB += gnomecanvas-2 gnomevfs-2 gobject-2.0 gpg-error graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl ltdl lzma m ogg
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png popt
WANTLIB += pthread ssl util vorbis vorbisfile xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES=		x11/gnome

LIB_DEPENDS=		x11/gnome/libgnome-keyring \
			x11/gnome/libgnome \
			x11/gnome/libgnomecanvas \
			x11/gnome/libbonoboui

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/libglade/2.0/*.{a,la}

.include <bsd.port.mk>
