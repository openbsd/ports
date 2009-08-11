# $OpenBSD: Makefile,v 1.17 2009/08/11 08:39:38 ajacoutot Exp $

COMMENT=		binary editor

GNOME_PROJECT=		ghex
GNOME_VERSION=		2.24.0
PKGNAME=		${DISTNAME}p5

SHARED_LIBS +=  gtkhex               1.0      # .0.0
CATEGORIES=		sysutils editors

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
		gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomeprint-2-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png popt pthread ssl util xml2 z \
		avahi-client avahi-common avahi-glib pthread-stubs xcb

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui

MODGNOME_HELP_FILES=	Yes
USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	ghex2

CONFIGURE_ARGS+=	${ENABLE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
