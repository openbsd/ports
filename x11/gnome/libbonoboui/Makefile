# $OpenBSD: Makefile,v 1.62 2014/04/02 09:36:13 jasper Exp $

COMMENT=	user interface components for bonobo

GNOME_PROJECT=	libbonoboui
GNOME_VERSION=	2.24.5
REVISION=	4

SHARED_LIBS +=	bonoboui-2	3.0        # .0.0

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation c cairo crypto
WANTLIB += dbus-1 dbus-glib-1 expat fontconfig freetype gailutil
WANTLIB += gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 popt
WANTLIB += glib-2.0 gmodule-2.0 gnomevfs-2 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs ssl util xcb
WANTLIB += xml2 z xcb-render gnome-2 gnomecanvas-2 ffi stdc++
WANTLIB += canberra ltdl ogg vorbis vorbisfile GL Xxf86vm drm xcb-shm

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
