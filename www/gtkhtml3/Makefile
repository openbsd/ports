# $OpenBSD: Makefile,v 1.27 2009/06/10 20:27:09 kili Exp $

COMMENT=		lightweight HTML rendering/printing/editing engine

GNOME_PROJECT=		gtkhtml
GNOME_VERSION=		3.24.5
API_VERSION=		3.14
PKGNAME=		gtkhtml3-${VERSION}p1

SHARED_LIBS +=	gtkhtml-3.14         3.0      # .20.0
SHARED_LIBS +=	gtkhtml-editor       0.0      # .0.0

CATEGORIES=    		www

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common \
		avahi-glib bonobo-2 bonobo-activation \
		bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 \
		gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png popt pthread ssl stdc++ \
		util xml2 z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		::devel/iso-codes \
			:gnome-icon-theme-*:x11/gnome/icon-theme
LIB_DEPENDS=		enchant::textproc/enchant \
			gnomeui-2::x11/gnome/libgnomeui
RUN_DEPENDS=		::devel/iso-codes

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=        ${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=		API_VERSION

.include <bsd.port.mk>
