# $OpenBSD: Makefile,v 1.44 2010/10/18 13:18:15 jasper Exp $

COMMENT=		user interface components for GNOME

GNOME_PROJECT=		libgnomeui
GNOME_VERSION=		2.24.4
REVISION=		1

SHARED_LIBS +=	gnomeui-2      2400.0         # .2400.2

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation cairo crypto
WANTLIB += dbus-1 dbus-glib-1 expat fontconfig freetype gailutil
WANTLIB += gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnomevfs-2 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png popt pthread-stubs ssl util xcb xml2
WANTLIB += gcrypt gpg-error xcb-render xcb-render-util z
WANTLIB += gnome-keyring.>=6 gnome-2 gnomecanvas-2 bonoboui-2
WANTLIB += canberra ltdl ogg pthread vorbis vorbisfile

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	:libgnome-keyring-*:x11/gnome/libgnome-keyring \
		::x11/gnome/libgnome \
		::x11/gnome/libgnomecanvas \
		::x11/gnome/libbonoboui

CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-gtk-doc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
