# $OpenBSD: Makefile,v 1.15 2009/06/11 18:38:17 ajacoutot Exp $

COMMENT=		keyring management program for the GNOME desktop

GNOME_PROJECT=		gnome-keyring-manager
GNOME_VERSION=		2.20.0
PKGNAME=		${DISTNAME}p11

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation \
		bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 expat \
		fontconfig freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png popt pthread ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

RUN_DEPENDS=		::x11/gnome/themes-extras
LIB_DEPENDS= 		gnomeui-2::x11/gnome/libgnomeui \
			gnome-keyring::x11/gnome/keyring

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	gnome-keyring-manager

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \

.include <bsd.port.mk>
