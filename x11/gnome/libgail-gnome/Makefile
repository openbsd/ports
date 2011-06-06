# $OpenBSD: Makefile,v 1.22 2011/06/06 15:10:40 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		implementation of the ATK interface for GNOME widgets

GNOME_PROJECT=		libgail-gnome
GNOME_VERSION=		1.20.4
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		http://developer.gnome.org/projects/gap/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xxf86vm art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 cairo canberra crypto dbus-1 dbus-glib-1
WANTLIB += drm expat fontconfig freetype gailutil gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0
WANTLIB += gpg-error gthread-2.0 gtk-x11-2.0 ltdl m ogg panel-applet-2
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png popt pthread-stubs spi ssl util vorbis vorbisfile
WANTLIB += xcb xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

MODGCONF2_SCHEMAS_DIR=	libgail-gnome

LIB_DEPENDS=		x11/gnome/at-spi \
			x11/gnome/libgnome \
			x11/gnome/libgnomecanvas \
			x11/gnome/panel

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
