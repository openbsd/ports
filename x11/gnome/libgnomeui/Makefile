# $OpenBSD: Makefile,v 1.62 2015/05/22 11:31:19 ajacoutot Exp $

COMMENT=		user interface components for GNOME

GNOME_PROJECT=		libgnomeui
GNOME_VERSION=		2.24.5
REVISION=		8

SHARED_LIBS +=	gnomeui-2      2400.0         # .2400.2

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation bonoboui-2
WANTLIB += cairo canberra crypto dbus-1 dbus-glib-1 drm expat ffi
WANTLIB += fontconfig freetype gailutil gconf-2 gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gnome-2
WANTLIB += gnome-keyring>=6 gnomecanvas-2 gnomevfs-2 gobject-2.0
WANTLIB += gpg-error graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz ltdl
WANTLIB += lzma m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png popt pthread pthread-stubs ssl stdc++ util
WANTLIB += vorbis vorbisfile xcb xcb-render xcb-shm xml2 z

EXTRACT_SUFX=		.tar.bz2

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	x11/gnome/libgnome-keyring \
		x11/gnome/libgnome \
		x11/gnome/libgnomecanvas \
		x11/gnome/libbonoboui

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

post-install:
	rm ${PREFIX}/lib/libglade/2.0/*.{a,la}

.include <bsd.port.mk>
