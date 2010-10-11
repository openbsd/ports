# $OpenBSD: Makefile,v 1.17 2010/10/11 08:19:20 jasper Exp $

COMMENT=		implementation of the ATK interface for GNOME widgets

GNOME_PROJECT=		libgail-gnome
GNOME_VERSION=		1.20.3

REVISION=		2

CATEGORIES=		devel

HOMEPAGE=		http://developer.gnome.org/projects/gap/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0
WANTLIB += bonobo-2 bonobo-activation bonoboui-2 cairo
WANTLIB += crypto dbus-1 dbus-glib-1 eggdbus-1 expat fontconfig
WANTLIB += freetype gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gnome-2
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring gnomeui-2
WANTLIB += gnomevfs-2 gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0 spi
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png popt pthread-stubs ssl util xcb xcb-render xcb-render-util
WANTLIB += xml2 z gnomecanvas-2 panel-applet-2
WANTLIB += canberra ltdl ogg pthread vorbis vorbisfile

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

MODGCONF2_SCHEMAS_DIR=	libgail-gnome

LIB_DEPENDS=		::x11/gnome/at-spi \
			::x11/gnome/libgnome \
			::x11/gnome/libgnomecanvas \
			::x11/gnome/panel

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
