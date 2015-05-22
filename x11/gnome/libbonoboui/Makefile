# $OpenBSD: Makefile,v 1.65 2015/05/22 11:31:19 ajacoutot Exp $

COMMENT=	user interface components for bonobo

GNOME_PROJECT=	libbonoboui
GNOME_VERSION=	2.24.5
REVISION=	7

SHARED_LIBS +=	bonoboui-2	3.0        # .0.0

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation c cairo
WANTLIB += canberra crypto dbus-1 dbus-glib-1 drm expat ffi fontconfig
WANTLIB += freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glade-2.0 glib-2.0 gmodule-2.0 gnome-2 gnomecanvas-2
WANTLIB += gnomevfs-2 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz ltdl lzma m ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png popt pthread pthread-stubs ssl
WANTLIB += stdc++ util vorbis vorbisfile xcb xcb-render xcb-shm xml2 z

EXTRACT_SUFX=		.tar.bz2

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/popt \
		x11/gnome/libgnome \
		x11/gnome/libgnomecanvas

MODGNOME_TOOLS +=	desktop-file-utils

TEST_IS_INTERACTIVE= x11

post-install:
	rm ${PREFIX}/lib/libglade/2.0/*.{a,la}

.include <bsd.port.mk>
