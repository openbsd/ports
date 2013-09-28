# $OpenBSD: Makefile,v 1.59 2013/09/28 08:51:23 ajacoutot Exp $

COMMENT=		user interface components for GNOME

GNOME_PROJECT=		libgnomeui
GNOME_VERSION=		2.24.5
REVISION=		5

SHARED_LIBS +=	gnomeui-2      2400.0         # .2400.2

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation cairo crypto
WANTLIB += dbus-1 dbus-glib-1 expat fontconfig freetype gailutil
WANTLIB += gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnomevfs-2 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png popt pthread-stubs ssl util xcb xml2
WANTLIB += gcrypt gpg-error xcb-render GL Xxf86vm drm xcb-shm
WANTLIB += gnome-keyring>=6 gnome-2 gnomecanvas-2 bonoboui-2
WANTLIB += canberra ltdl ogg vorbis vorbisfile z ffi stdc++

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
