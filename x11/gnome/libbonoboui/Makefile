# $OpenBSD: Makefile,v 1.73 2019/07/07 11:20:52 ajacoutot Exp $

COMMENT=	user interface components for bonobo

GNOME_PROJECT=	libbonoboui
GNOME_VERSION=	2.24.5
REVISION=	12

SHARED_LIBS +=	bonoboui-2	3.0        # .0.0

# GPLv2/LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2
WANTLIB += atk-1.0 bonobo-2 bonobo-activation c cairo canberra crypto
WANTLIB += dbus-1 dbus-glib-1 expat ffi fontconfig freetype fribidi
WANTLIB += gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-2 gnomecanvas-2 gnomevfs-2
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl ltdl lzma m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png popt pthread ssl util vorbis vorbisfile xcb
WANTLIB += xcb-render xcb-shm xml2 z

EXTRACT_SUFX=	.tar.bz2

MODULES=	x11/gnome

LIB_DEPENDS=	devel/popt \
		x11/gnome/libgnome \
		x11/gnome/libgnomecanvas

MODGNOME_TOOLS=	desktop-file-utils

CONFIGURE_STYLE=	gnu

TEST_IS_INTERACTIVE= x11

post-install:
	rm ${PREFIX}/lib/libglade/2.0/*.{a,la}

.include <bsd.port.mk>
