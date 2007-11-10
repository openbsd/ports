# $OpenBSD: Makefile,v 1.13 2007/11/10 14:13:10 jasper Exp $

COMMENT=		lightweight HTML rendering/printing/editing engine

GNOME_PROJECT=		gtkhtml
GNOME_VERSION=		3.16.1
API_VERSION=		3.14
PKGNAME=		gtkhtml3-${VERSION}
SHARED_LIBS +=	gtkhtml-3.14         1.0      # .20.0
CATEGORIES=    		www

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 bonobo-activation \
		bonoboui-2 cairo crypto dbus-1 dbus-glib-1 esd expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre png \
		popt ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		:gnome-icon-theme-*:x11/gnome/icon-theme
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=        ${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=		API_VERSION

NO_REGRESS=		Yes

.include <bsd.port.mk>
